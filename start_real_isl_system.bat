@echo off
echo ========================================
echo    REAL ISL SYSTEM STARTUP SCRIPT
echo ========================================
echo.

echo 🚀 Starting Real ISL Translation System...
echo.

echo 📊 Starting Data Collection Service (Port 5002)...
start "Data Collection" cmd /k "cd ml-model && python data_collection.py"

echo ⏳ Waiting for data collection service to start...
timeout /t 3 /nobreak > nul

echo 🤖 Starting Real ISL Detection Service (Port 5003)...
start "Real ISL Detector" cmd /k "cd ml-model && python real_isl_detector.py"

echo ⏳ Waiting for detection service to start...
timeout /t 3 /nobreak > nul

echo 🗄️ Starting MongoDB (if not running)...
net start MongoDB >nul 2>&1 || echo MongoDB already running or not installed

echo ⏳ Waiting for MongoDB...
timeout /t 2 /nobreak > nul

echo 🌐 Starting Main Server (Port 5000)...
start "Main Server" cmd /k "cd server && npm start"

echo ⏳ Waiting for main server to start...
timeout /t 5 /nobreak > nul

echo 🎨 Starting React Client (Port 3000)...
start "React Client" cmd /k "cd client && npm start"

echo.
echo ========================================
echo    ALL SERVICES STARTED SUCCESSFULLY!
echo ========================================
echo.
echo 📊 Data Collection: http://localhost:5002
echo 🤖 Real ISL Detection: http://localhost:5003
echo 🌐 Main Server: http://localhost:5000
echo 🎨 React Client: http://localhost:3000
echo.
echo 📝 To collect real ISL data:
echo    1. Go to http://localhost:5002
echo    2. Register as a signer
echo    3. Record authentic ISL gestures
echo.
echo 🎯 To train the real model:
echo    1. Collect data from diverse signers
echo    2. Run: cd ml-model && python real_isl_trainer.py
echo.
echo 🔍 To validate gestures:
echo    1. Use the community validation system
echo    2. Get expert reviews
echo    3. Build authentic ISL recognition
echo.
echo Press any key to exit...
pause >nul
