# 🎥 Quick Video Setup Guide

## Add ISL Videos in 5 Minutes!

### ✅ What's Ready:
- Video player component ✅
- Database structure ✅  
- Learning interface ✅
- YouTube support ✅
- Local video support ✅

### 🚀 Quick Setup (3 Steps):

#### Step 1: Find ISL Videos
1. Go to YouTube
2. Search: **"Indian Sign Language alphabet tutorial"**
3. Find a good tutorial video
4. Copy the video URL

#### Step 2: Update Seed Script
1. Open: `server/scripts/seedISLData.js`
2. Find the videoUrl fields (currently have placeholder URLs)
3. Replace with YouTube embed URL:
   ```
   videoUrl: 'https://www.youtube.com/embed/YOUR_VIDEO_ID?start=SECONDS'
   ```
4. Set `start=` to the exact second where each letter appears

#### Step 3: Seed Database
```bash
cd server
node scripts/seedISLData.js
```

### 🎬 Example:

**Before:**
```javascript
videoUrl: 'https://www.youtube.com/embed/dQw4w9WgXcQ?start=0'
```

**After (with real video):**
```javascript
videoUrl: 'https://www.youtube.com/embed/ABC123xyz?start=5'
```

### 📁 For Local Videos:

1. Download ISL videos
2. Name them: `A.mp4`, `B.mp4`, etc.
3. Place in: `server/public/videos/isl/alphabet/`
4. Update seed script:
   ```javascript
   videoUrl: '/videos/isl/alphabet/A.mp4'
   ```

### ✅ Test:

1. Start app: `.\START_APP.bat`
2. Go to: http://localhost:3000/learn
3. Click any gesture card
4. Video should play! 🎉

### 📚 Full Guide:

See `ISL_VIDEO_DATASET_GUIDE.md` for:
- Detailed instructions
- Public dataset sources
- Video specifications
- Troubleshooting

---

**That's it! Your learning system will have real ISL videos! 🎥✨**

