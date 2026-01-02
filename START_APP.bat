@echo off
echo ========================================
echo   ISL Translation System
echo   Starting All Services...
echo ========================================
echo.

echo [1/3] Starting Backend Server (Port 5000)...
start "Backend Server" cmd /k "cd server && npm start"
timeout /t 3 /nobreak > nul

echo [2/3] Starting ML Service (Port 5001)...
start "ML Service" cmd /k "cd ml-model && python app.py"
timeout /t 3 /nobreak > nul

echo [3/3] Starting Frontend (Port 3000)...
start "Frontend" cmd /k "cd client && npm start"

echo.
echo ========================================
echo   All Services Started!
echo ========================================
echo   Frontend: http://localhost:3000
echo   Backend:  http://localhost:5000
echo   ML API:   http://localhost:5001
echo ========================================
echo.
echo   Press any key to close this window...
pause > nul

