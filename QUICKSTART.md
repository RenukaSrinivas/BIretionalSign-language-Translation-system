# Quick Start Guide

Get the ISL Translation System up and running in under 10 minutes!

## Prerequisites Checklist

- [ ] Node.js (v16+) installed
- [ ] MongoDB installed and running
- [ ] Python (3.8+) installed
- [ ] Git installed

## 5-Minute Setup

### Step 1: Clone and Install (2 minutes)

```bash
# Clone the repository
git clone <repository-url>
cd FINAL

# Install all dependencies at once
npm run install-all
```

### Step 2: Configure Environment (1 minute)

```bash
# Create backend environment file
cd server
copy .env.example .env  # Windows
# OR
cp .env.example .env    # Mac/Linux

# Edit the .env file with your settings
```

Minimal `.env` configuration:
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/isl_translation
JWT_SECRET=mySecretKey123
ML_MODEL_URL=http://localhost:5001
```

### Step 3: Setup Database (1 minute)

```bash
# Make sure MongoDB is running
# Then seed the database
cd server
node scripts/seedISLData.js
cd ..
```

### Step 4: Start the Application (1 minute)

#### Option A: Start All Services Together (Easiest)
```bash
# Terminal 1 - Frontend & Backend
npm run dev

# Terminal 2 - ML Service
cd ml-model
python app.py
```

#### Option B: Start Services Separately
```bash
# Terminal 1 - Frontend
cd client
npm start

# Terminal 2 - Backend
cd server
npm run dev

# Terminal 3 - ML Service
cd ml-model
python app.py
```

## Access the Application

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000
- **ML Service**: http://localhost:5001

## Default Test Account

For quick testing, create an account using the registration page or use these example credentials:

```
Email: test@example.com
Password: test123
```

(You'll need to register this account first)

## Quick Feature Tour

### 1. Register/Login
- Go to http://localhost:3000
- Click "Sign up" and create an account

### 2. Try ISL to Text
- Navigate to "ISL to Text"
- Allow camera access
- Click "Start Camera" then "Start Capturing"
- Show hand gestures to the camera

### 3. Try Text to ISL
- Navigate to "Text to ISL"
- Type any text (A-Z)
- Click "Translate to ISL"
- View the ISL signs

### 4. Learn ISL
- Navigate to "Learn ISL"
- Browse the alphabet
- Click on any gesture for details

## Troubleshooting

### MongoDB Not Running
```bash
# Windows
net start MongoDB

# Mac
brew services start mongodb-community

# Linux
sudo systemctl start mongod
```

### Port Already in Use
```bash
# Kill process on port 3000 (Windows)
netstat -ano | findstr :3000
taskkill /PID <PID> /F

# Kill process on port 3000 (Mac/Linux)
lsof -ti:3000 | xargs kill -9
```

### Camera Not Working
- Ensure you're using HTTPS or localhost
- Check browser permissions
- Try Chrome or Firefox
- Make sure no other app is using the camera

### ML Service Errors
```bash
# Reinstall Python dependencies
cd ml-model
pip install --upgrade -r requirements.txt
```

## Next Steps

1. **Explore Features**: Try all translation features
2. **View History**: Check your translation history
3. **Customize**: Update your profile preferences
4. **Learn More**: Read the full README.md
5. **Contribute**: See CONTRIBUTING.md

## Common Commands

```bash
# Install dependencies
npm run install-all

# Run in development
npm run dev

# Build for production
npm run build

# Start production server
npm start

# Seed database
cd server && node scripts/seedISLData.js

# Train ML model
cd ml-model && python train_model.py
```

## Getting Help

- Check the full [README.md](./README.md)
- Review [CONTRIBUTING.md](./CONTRIBUTING.md)
- Open an issue on GitHub
- Check existing issues for solutions

## What's Next?

- Add real ISL gesture images to `server/public/images/isl/`
- Collect real gesture data for better ML accuracy
- Customize the UI theme
- Add more ISL words and phrases
- Deploy to production

---

Happy translating! 🤟

For detailed information, see the full [README.md](./README.md)



