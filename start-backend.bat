@echo off
echo Starting Quiz System Backend...
echo.
echo Checking if Java is installed...
java -version 2>nul
if %ERRORLEVEL% NEQ 0 (
  echo Java is not installed or not in PATH. Please install Java 11 or higher.
  goto :end
)

echo.
echo Checking if MySQL is running...
tasklist /fi "imagename eq mysqld.exe" | find "mysqld.exe" > nul
if %ERRORLEVEL% NEQ 0 (
  echo MySQL does not appear to be running. Please start MySQL service.
  echo You can use the MySQL installer to start the service or run:
  echo net start mysql
  goto :end
)

echo.
echo Starting Spring Boot application on configurable port (default 8081)...
set "QUIZ_BACKEND_PORT=8081"
if not "%1"=="" set "QUIZ_BACKEND_PORT=%1"
cd java-backend
echo Using port %QUIZ_BACKEND_PORT%
echo Building and starting the application...
call mvnw.cmd -Dspring-boot.run.arguments=--server.port=%QUIZ_BACKEND_PORT% spring-boot:run
if %ERRORLEVEL% NEQ 0 (
  echo Failed to start the backend. Please check error messages above.
) else (
  echo Backend started successfully at http://localhost:%QUIZ_BACKEND_PORT%
)

:end
echo.
pause