# Change to the desktop directory
cd "$env:USERPROFILE\Desktop"

# Download the script from GitHub
Invoke-WebRequest -Uri "https://github.com/MrNico98/Debloat/archive/refs/heads/main.zip" -OutFile "Debloat-main.zip"

# Extract all from "isotoolmain.zip"
Expand-Archive -Path "Debloat-main.zip" -DestinationPath "." -Force

# Move the "isotool" folder to the current directory
Move-Item -Path "Debloat-main\DebloatMrNico98" -Destination "DebloatMrNico98" -Force

# Remove the "isotool" directory 
Remove-Item -Path "Debloat-main" -Recurse -Force

# Remove the "ISOTool.zip" file 
Remove-Item -Path "Debloat-main.zip" -Force

# Run the script
Start-Process -FilePath ".\DebloatMrNico98\MrNico98Debloat3.0.exe"
