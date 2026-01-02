@echo off
echo ========================================
echo   Starting All Three Services
echo   ISL Translation System
echo ========================================
echo.

REM Check if Node.js is installed
where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

REM Check if Python is installed
where python >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Python is not installed or not in PATH
    echo Please install Python from https://www.python.org/
    pause
    exit /b 1
)

echo [1/3] Starting Backend Server (Port 5000)...
start "ISL Backend Server" cmd /k "cd /d %~dp0server && echo Starting Backend Server on port 5000... && npm start"
timeout /t 3 /nobreak > nul

echo [2/3] Starting ML Model Service (Port 5001)...
start "ISL ML Service" cmd /k "cd /d %~dp0ml-model && echo Starting ML Service on port 5001... && python app.py"
timeout /t 3 /nobreak > nul

echo [3/3] Starting Frontend Client (Port 3000)...
start "ISL Frontend" cmd /k "cd /d %~dp0client && echo Starting Frontend on port 3000... && npm start"
timeout /t 3 /nobreak > nul

echo.
echo ========================================
echo   All Services Started!
echo ========================================
echo.
echo   Service URLs:
echo   - Frontend: http://localhost:3000
echo   - Backend:  http://localhost:5000
echo   - ML API:   http://localhost:5001
echo.
echo   Three separate windows have been opened.
echo   Keep them open while using the application.
echo.
echo   To stop services, close the respective windows.
echo ========================================
echo.
timeout /t 5 /nobreak > nul

