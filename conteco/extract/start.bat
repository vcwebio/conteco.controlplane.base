@echo off
setlocal EnableExtensions EnableDelayedExpansion
set mode=%1
if not %1==modeco set mode = conteco
REM echo Starting controlplane.base
REM start cmd.exe @cmd /k "start-output-console.bat"

set "PWD_VOLUME=%cd%"
set "SEARCHTEXT=\"
set "REPLACETEXT=\\"
set "PWD_VOLUME2=!PWD_VOLUME:%SEARCHTEXT%=%REPLACETEXT%!"

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v %cd%:/conteco/pwd ${CONTECO_REALM}/${CONTECO_ECOSYSTEM}.controlplane.%mode% --interactive start %PWD_VOLUME2%  %mode% windows %2
