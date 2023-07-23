Param (
  [Parameter(Position = 0)] [string] $Log
)

$length = @()

function printTimestamp {
  param (
    $duration
  )
  return "{0:hh\:mm\:ss}" -f ($duration)
}

Get-ChildItem -ErrorAction SilentlyContinue $Log | ForEach-Object {
  $logfile = Get-Content $_.FullName | ConvertFrom-Json
  $lastSet = $logfile.sets.length - 5
  if ($lastSet -lt 0) {
    return
  }

  0..$lastSet | ForEach-Object {
    $currSet = $logfile.sets[$_]
    if ((!$currSet.start) -or (!$currSet.end)) {
      return
    }
    $start = [datetime]::ParseExact($currSet.start, 'HH:mm:ss.FFF', $null)
    $end = [datetime]::ParseExact($currSet.end, 'HH:mm:ss.FFF', $null)
    $length = $end - $start
    $lengths += @($length)
  }
}

if ($lengths.Length -eq 0) {
  return
}

$sorted = $lengths | Sort-Object
$stats = Write-Output $sorted | Measure-Object -Property TotalSeconds -Average -Maximum -Minimum
Write-Output "Count: $($stats.Count)"
Write-Output "Min: $(New-TimeSpan -Seconds $stats.Minimum)"
Write-Output "Median: $(printTimestamp($sorted[$sorted.Length/2]))"
Write-Output "Average: $(New-TimeSpan -Seconds $stats.Average)"
Write-Output "Max: $(New-TimeSpan -Seconds $stats.Maximum)"
