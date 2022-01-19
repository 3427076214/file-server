set GOOS=linux
set GOARCH=amd64
set CGO_ENABLED=0 
go build -o file-server

if %ERRORLEVEL% gtr 0 (
    pause
)