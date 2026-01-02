# ISL Translation System - Quick Reference

## 🚀 Starting the Application

### Windows (Easiest):
```
Double-click: START_APP.bat
```

### Manual Start:
```bash
Terminal 1: cd server && npm start
Terminal 2: cd ml-model && python app_simple.py
Terminal 3: cd client && npm start
```

## 🌐 Access URLs

| Service | URL |
|---------|-----|
| **Main App** | http://localhost:3000 |
| **Backend** | http://localhost:5000 |
| **ML API** | http://localhost:5001 |

## 📱 Main Features

### 1. Tutorial (START HERE! 📚)
- **Route**: `/tutorial`
- **6 Interactive Lessons**:
  1. Introduction to ISL
  2. Hand Shapes & Positions
  3. ISL Alphabet (A-Z)
  4. Numbers in ISL
  5. Common ISL Phrases
  6. Using the Translator
- **Features**: Progress tracking, practice exercises, pro tips

### 2. Learn ISL 📖
- **Route**: `/learn`
- Browse 36 gestures (A-Z, 0-9)
- Search and filter
- Click for details

### 3. ISL to Text 👋
- **Route**: `/isl-to-text`
- Use webcam
- Real-time recognition
- Text-to-speech

### 4. Text to ISL ⌨️
- **Route**: `/text-to-isl`
- Type text
- View ISL signs
- Animated playback

### 5. History 📊
- **Route**: `/history`
- Past translations
- Statistics
- Progress tracking

### 6. Profile ⚙️
- **Route**: `/profile`
- User settings
- Preferences
- Activity stats

## 🎯 Quick Start Guide

1. **Register** account
2. **Go to Tutorial** → Complete lessons
3. **Browse Learn ISL** → Explore gestures
4. **Try Text to ISL** → Type "HELLO"
5. **Try ISL to Text** → Use webcam

## 📊 Database Info

- **Alphabet**: 26 gestures (A-Z)
- **Numbers**: 10 gestures (0-9)
- **Total**: 36 ISL gestures

## 🔧 Troubleshooting

### Services not starting?
```bash
# Check MongoDB
net start MongoDB

# Check ports in use
netstat -ano | findstr ":3000 :5000 :5001"
```

### Clear port:
```bash
netstat -ano | findstr :<port>
taskkill /PID <PID> /F
```

## 📖 Documentation

- `SETUP_GUIDE.md` - Complete setup instructions
- `APPLICATION_STATUS.md` - Current status
- `README.md` - Full documentation
- `QUICKSTART.md` - 5-minute guide

## ⌨️ Test Credentials

Create your own account:
- Go to http://localhost:3000
- Click "Sign Up"
- Fill in details

## 💡 Pro Tips

✅ Start with **Tutorial** page
✅ Complete all 6 lessons
✅ Practice in good lighting
✅ Make clear gestures
✅ Track your progress
✅ Use History to review

## 🎉 Features Checklist

- ✅ Interactive Tutorial (6 lessons)
- ✅ ISL Library (36 gestures)
- ✅ Real-time Translation
- ✅ Text-to-ISL Conversion
- ✅ User Authentication
- ✅ Translation History
- ✅ Progress Tracking
- ✅ Speech Output
- ✅ Responsive Design
- ✅ Modern UI

## 🤟 Making communication accessible!



