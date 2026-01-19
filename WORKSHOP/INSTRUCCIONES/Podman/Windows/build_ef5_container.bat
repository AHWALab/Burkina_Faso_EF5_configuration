@ECHO OFF
SETLOCAL

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
)

SET "BASE_ARG="
IF DEFINED DOCKER_BASE_OS (
	SET "BASE_ARG=--build-arg DOCKER_BASE_OS=%DOCKER_BASE_OS%"
)

"%ENGINE%" build --no-cache %BASE_ARG% -t ef5-container .

ENDLOCAL
pause