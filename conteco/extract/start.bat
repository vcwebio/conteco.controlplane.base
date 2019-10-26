@echo off
set mode=%1
if not %1==modeco set mode = conteco 
REM echo Starting controlplane.base
REM start cmd.exe @cmd /k "start-output-console.bat"

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v c:\conteco\pwd:/conteco/pwd ${CONTECO_REALM}/${CONTECO_ECOSYSTEM}.controlplane.%mode% --interactive start  %mode% windows
