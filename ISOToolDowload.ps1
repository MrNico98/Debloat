# Change to the desktop directory
cd "$env:USERPROFILE\Desktop"

# Download the script from GitHub
Invoke-WebRequest -Uri "https://github.com/MrNico98/isotool/archive/refs/heads/main.zip" -OutFile "isotool-main.zip"

# Extract all from "isotoolmain.zip"
Expand-Archive -Path "isotool-main.zip" -DestinationPath "." -Force

# Move the "isotool" folder to the current directory
Move-Item -Path "isotool-main\ISOTool" -Destination "ISOTool" -Force

# Remove the "isotool" directory 
Remove-Item -Path "isotool-main" -Recurse -Force

# Remove the "ISOTool.zip" file 
Remove-Item -Path "isotool-main.zip" -Force

# Run the script
Start-Process -FilePath ".\ISOTool\Start.bat"