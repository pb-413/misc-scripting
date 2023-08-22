$gitUrl = git config --get remote.origin.url
$_ , $url = $gitUrl -Split "@"
$url = $url.Replace(":","/")
$url = "https://"+$url.Replace(".git","/")+"branch/"
$branch = git rev-parse --abbrev-ref HEAD
Start-Process($url+$branch)
