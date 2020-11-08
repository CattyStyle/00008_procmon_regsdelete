$ret = get-content "c:\Logfile.CSV" |convertfrom-csv

foreach($item in $ret){

[String]$temp = $item.path
write-output ('reg delete ' + '"' + $temp + '" /f >nul 2>nul') >> c:\delete.bat
}