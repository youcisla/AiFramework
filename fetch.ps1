
param([string]$url, [int]$max = 7000)
$h = (curl.exe -sL --max-time 45 $url) -join [char]10
$h = $h -replace '(?s)<script.*?</script>',' ' -replace '(?s)<style.*?</style>',' ' -replace '(?s)<!--.*?-->',' '
$h = $h -replace '<[^>]+>',' '
$h = [System.Net.WebUtility]::HtmlDecode($h)
$h = $h -replace '\s+',' '
$h = $h.Trim()
if ($h.Length -gt $max) { $h.Substring(0,$max) } else { $h }
