# Indian Sign Language (ISL) Translation System

A real-time, AI-powered Indian Sign Language translation system that bridges the communication gap between hearing/speech-impaired individuals and the rest of society. This full-stack application uses machine learning for gesture recognition and offers bidirectional translation between ISL and English.

## 🌟 Features

### Core Functionality
- **ISL to Text/Speech**: Real-time sign language gesture recognition through webcam with text and speech output
- **Text to ISL**: Convert English text to ISL signs with visual representations (images/videos)
- **Bidirectional Translation**: Seamless two-way communication support
- **Real-time Processing**: Instant gesture recognition and translation

### User Features
- User authentication and authorization
- Translation history tracking
- Learning module with complete ISL alphabet and numbers
- Customizable user preferences (speech rate, theme, etc.)
- Progress tracking and statistics

### Technical Features
- Modern MERN stack architecture
- AI-powered gesture recognition using TensorFlow and MediaPipe
- WebSocket support for real-time communication
- Responsive design for all devices
- RESTful API architecture

## 🛠️ Tech Stack

### Frontend
- **React.js** - UI framework
- **React Router** - Navigation
- **Framer Motion** - Animations
- **Axios** - HTTP client
- **Socket.IO Client** - Real-time communication
- **React Webcam** - Camera integration
- **React Icons** - Icon library

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **MongoDB** - Database
- **Mongoose** - ODM
- **Socket.IO** - WebSocket server
- **JWT** - Authentication
- **bcryptjs** - Password hashing

### Machine Learning
- **Python 3.8+** - ML runtime
- **Flask** - ML API server
- **TensorFlow/Keras** - Deep learning
- **MediaPipe** - Hand tracking
- **OpenCV** - Computer vision
- **NumPy** - Numerical computing

## 📋 Prerequisites

Before you begin, ensure you have the following installed:
- **Node.js** (v16 or higher) - [Download](https://nodejs.org/)
- **MongoDB** (v5 or higher) - [Download](https://www.mongodb.com/try/download/community)
- **Python** (v3.8 or higher) - [Download](https://www.python.org/downloads/)
- **pip** - Python package manager
- **Git** - Version control

## 🚀 Installation & Setup

### 1. Clone the Repository

```bash
git clone <repository-url>
cd FINAL
```

### 2. Install Dependencies

#### Install all dependencies (root, client, and server):
```bash
npm run install-all
```

Or install them separately:

```bash
# Root dependencies
npm install

# Frontend dependencies
cd client
npm install
cd ..

# Backend dependencies
cd server
npm install
cd ..

# ML Model dependencies
cd ml-model
pip install -r requirements.txt
cd ..
```

### 3. Environment Configuration

#### Backend Configuration
Create a `.env` file in the `server` directory:

```bash
cd server
cp .env.example .env
```

Edit `server/.env` with your configuration:
```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/isl_translation
JWT_SECRET=your_secure_jwt_secret_key_here
ML_MODEL_URL=http://localhost:5001
NODE_ENV=development
```

### 4. Database Setup

#### Start MongoDB
```bash
# On Windows
net start MongoDB

# On macOS/Linux
sudo systemctl start mongod
```

#### Seed ISL Gesture Data
```bash
cd server
node scripts/seedISLData.js
```

### 5. Train ML Model (Optional)

The system includes a pre-configured ML model. To train your own:

```bash
cd ml-model
python train_model.py
```

**Note**: For production use, collect real ISL gesture data and update the training script accordingly.

## 🎯 Running the Application

### Development Mode

#### Option 1: Run Everything Together (Recommended)
```bash
# From root directory
npm run dev
```

This will start:
- React frontend (http://localhost:3000)
- Express backend (http://localhost:5000)

#### Option 2: Run Services Separately

**Terminal 1 - Frontend:**
```bash
cd client
npm start
```

**Terminal 2 - Backend:**
```bash
cd server
npm run dev
```

**Terminal 3 - ML Model Service:**
```bash
cd ml-model
python app.py
```

### Production Mode

#### Build the frontend:
```bash
cd client
npm run build
```

#### Start the backend:
```bash
cd server
npm start
```

The application will be available at `http://localhost:5000`

## 📱 Application Usage

### Getting Started

1. **Register/Login**: Create an account or login with existing credentials
2. **ISL to Text**: 
   - Navigate to "ISL to Text" page
   - Allow camera access
   - Start capturing gestures
   - View real-time translation
3. **Text to ISL**:
   - Navigate to "Text to ISL" page
   - Type your text
   - View corresponding ISL gestures
4. **Learn ISL**:
   - Browse the complete alphabet and numbers
   - Click on any gesture for detailed view
5. **History**:
   - View all past translations
   - Track your progress

## 📁 Project Structure

```
FINAL/
├── client/                 # React frontend
│   ├── public/            # Static files
│   └── src/
│       ├── components/    # React components
│       ├── context/       # Context providers
│       ├── pages/         # Page components
│       ├── App.js         # Main app component
│       └── index.js       # Entry point
├── server/                # Express backend
│   ├── models/           # Mongoose models
│   ├── routes/           # API routes
│   ├── scripts/          # Utility scripts
│   └── index.js          # Server entry point
├── ml-model/             # Machine learning service
│   ├── models/           # Trained models
│   ├── app.py            # Flask API server
│   ├── train_model.py    # Model training script
│   └── requirements.txt  # Python dependencies
├── package.json          # Root package file
└── README.md            # This file
```

## 🔌 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/profile` - Get user profile
- `PUT /api/auth/preferences` - Update user preferences

### Translation
- `POST /api/translate/isl-to-text` - Translate ISL to text
- `POST /api/translate/text-to-isl` - Translate text to ISL
- `POST /api/translate/detect-gesture` - Detect single gesture

### History
- `GET /api/history` - Get translation history
- `GET /api/history/:id` - Get specific translation
- `DELETE /api/history/:id` - Delete translation
- `GET /api/history/stats/summary` - Get user statistics

### ISL Data
- `GET /api/isl-data` - Get all ISL gestures
- `GET /api/isl-data/:letter` - Get specific gesture
- `POST /api/isl-data` - Add new gesture (admin)

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🐛 Troubleshooting

### Common Issues

**MongoDB Connection Error:**
- Ensure MongoDB is running: `mongod --version`
- Check connection string in `.env`

**ML Model Service Not Starting:**
- Verify Python version: `python --version`
- Install dependencies: `pip install -r ml-model/requirements.txt`
- Check port 5001 is available

**Camera Not Working:**
- Allow browser camera permissions
- Ensure camera is not being used by another application
- Try in a different browser (Chrome recommended)

**Port Already in Use:**
```bash
# Find process using the port (Windows)
netstat -ano | findstr :3000

# Kill the process
taskkill /PID <PID> /F

# On macOS/Linux
lsof -ti:3000 | xargs kill -9
```

## 📊 Performance Optimization

### Frontend Optimization
- Images are lazy-loaded
- Code splitting implemented
- Animations optimized with Framer Motion
- API calls are debounced

### Backend Optimization
- Database queries are indexed
- JWT tokens for stateless authentication
- Efficient MongoDB queries with projections

### ML Model Optimization
- MediaPipe for real-time hand tracking
- Optimized model architecture
- Batch prediction support

## 🔒 Security Considerations

- Passwords are hashed using bcrypt
- JWT tokens for secure authentication
- Input validation on all API endpoints
- CORS properly configured
- Environment variables for sensitive data

## 📈 Future Enhancements

- [ ] Support for full ISL sentences and phrases
- [ ] Video-based gesture tutorials
- [ ] Mobile application (React Native)
- [ ] Multi-language support
- [ ] Offline mode support
- [ ] Social features (practice with others)
- [ ] Advanced analytics dashboard
- [ ] AI-powered gesture suggestions
- [ ] Integration with video calling platforms

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Authors

- Your Name - Initial work

## 🙏 Acknowledgments

- Indian Sign Language Research and Training Centre (ISLRTC)
- MediaPipe team for hand tracking solutions
- The deaf community for insights and feedback
- All contributors and testers

## 📞 Support

For support, email your-email@example.com or open an issue on GitHub.

## 🌐 Links

- [Documentation](./docs)
- [Issue Tracker](./issues)
- [Project Board](./projects)

---

**Note**: This system uses synthetic training data for demonstration. For production deployment, collect real ISL gesture data from the deaf community and retrain the model for accurate recognition.

Made with ❤️ for accessibility and inclusion

