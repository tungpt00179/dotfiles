mouseover 10 10000 win.png && xdotool click 1
mouseover 10 10000 powershell.png && xdotool click 1
sleep 1

xdotool type '[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"'; xdotool key Return; sleep 1
xdotool type '(New-Object System.Net.WebClient).DownloadFile("https://github.com/jamesstringerparsec/Parsec-Cloud-Preparation-Tool/archive/master.zip","$ENV:UserProfile\Downloads\Parsec-Cloud-Preparation-Tool.zip")'; xdotool key Return; sleep 1
xdotool type 'New-Item -Path $ENV:UserProfile\Downloads\Parsec-Cloud-Preparation-Tool -ItemType Directory'; xdotool key Return; sleep 1
xdotool type 'Expand-Archive $ENV:UserProfile\Downloads\Parsec-Cloud-Preparation-Tool.Zip -DestinationPath $ENV:UserProfile\Downloads\Parsec-Cloud-Preparation-Tool'; xdotool key Return; sleep 1
xdotool type 'CD $ENV:UserProfile\Downloads\Parsec-Cloud-Preparation-Tool\Parsec-Cloud-Preparation-Tool-master\'; xdotool key Return; sleep 1
xdotool type 'Powershell.exe -File $ENV:UserProfile\Downloads\Parsec-Cloud-Preparation-Tool\Parsec-Cloud-Preparation-Tool-master\Loader.ps1'; xdotool key Return; sleep 1
