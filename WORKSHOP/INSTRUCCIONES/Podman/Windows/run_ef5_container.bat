@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

REM Detect container engine: prefer Podman if available
where podman >NUL 2>&1
IF %ERRORLEVEL%==0 (
	SET "ENGINE=podman"
) ELSE (
	where docker >NUL 2>&1
	IF %ERRORLEVEL%==0 (
		SET "ENGINE=docker"
	) ELSE (
		ECHO Neither podman nor docker was found on PATH.
		ECHO Please install Podman Desktop or Docker and try again.
		pause
		EXIT /B 1
	)
)

IF /I "%ENGINE%"=="podman" (
	REM Ensure Podman machine is running (no-op if already running)
	podman machine start >NUL 2>&1

	REM Convert current directory to Linux path for Podman (WSL backend)
	FOR /F "usebackq delims=" %%i IN (`wsl.exe wslpath -a "%CD%"`) DO SET "PWD_LINUX=%%i"

	"%ENGINE%" run -it ^
		-v "!PWD_LINUX!/data:/data:rw" ^
		-v "!PWD_LINUX!/conf:/conf:ro" ^
		-v "!PWD_LINUX!/results:/results:rw" ^
		ef5-container
) ELSE (
	"%ENGINE%" run -it ^
		-v "%CD%\data:/data:rw" ^
		-v "%CD%\conf:/conf:ro" ^
		-v "%CD%\results:/results:rw" ^
		ef5-container
)

ENDLOCAL
pause