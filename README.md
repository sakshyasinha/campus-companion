# Campus Companion - Complete Setup Guide

## Project Overview
Campus Companion is a comprehensive AI-powered platform for campus management with features including:
- Event management and registration
- Lost & Found system with AI matching
- Community posts and interactions
- Placement news and updates
- AI-powered resume analysis
- Real-time notifications
- User authentication and profiles

## Setup Instructions

### 1. Install Dependencies

#### Client Dependencies
```bash
cd client
npm install
```

#### Server Dependencies
```bash
cd server
npm install
```

### 2. Environment Configuration

#### Server Environment (.env)
- Copy the provided .env file to server/.env
- Update the following variables with your actual values:
  - MONGODB_URI: Your MongoDB connection string
  - JWT_SECRET: Strong secret key for JWT tokens
  - CLOUDINARY_*: Cloudinary credentials for file uploads
  - EMAIL_*: Email service configuration for notifications
  - OPENAI_API_KEY: OpenAI API key for AI features

#### Client Environment
Create client/.env with:
```
VITE_API_URL=http://localhost:5000/api
VITE_CLOUDINARY_CLOUD_NAME=your_cloudinary_cloud_name
```

### 3. Database Setup

#### MongoDB
1. Install MongoDB locally or use MongoDB Atlas
2. Create a database named 'campus_companion'
3. The application will automatically create collections

#### Optional: Seed Data
```bash
cd server
npm run seed
```

### 4. Development Setup

#### Start the development servers:

Terminal 1 (Server):
```bash
cd server
npm run dev
```

Terminal 2 (Client):
```bash
cd client
npm run dev
```

### 5. Production Build

#### Build client:
```bash
cd client
npm run build
```

#### Start production server:
```bash
cd server
npm start
```

## Remaining Files to Create

### Client Components
1. `ItemCard.jsx` - Lost & found item display
2. `RecommendationsList.jsx` - AI recommendations
3. `ReportModal.jsx` - Reporting modal
4. `ScoreDisplay.jsx` - Resume score visualization
5. `SentimentIndicator.jsx` - Sentiment analysis display
6. `StatCard.jsx` - Statistics display

### Client Pages
1. `LostFound.jsx` - Lost & found management
2. `Community.jsx` - Community posts and interactions
3. `PlacementNews.jsx` - Placement updates
4. `Profile.jsx` - User profile management
5. `ResumeAnalyzer.jsx` - Resume analysis interface

### Server Controllers
1. `eventController.js` - Event management logic
2. `lostFoundController.js` - Lost & found operations
3. `communityController.js` - Community features
4. `placementController.js` - Placement news management
5. `resumeController.js` - Resume analysis logic

### Server Models
1. `CommunityPost.js` - Community post schema
2. `PlacementNews.js` - Placement news schema
3. `Resume.js` - Resume analysis schema

### Server Routes
1. `events.js` - Event endpoints
2. `lostFound.js` - Lost & found endpoints
3. `community.js` - Community endpoints
4. `placement.js` - Placement endpoints
5. `resume.js` - Resume endpoints

### Server Utilities
1. `aiService.js` - AI integration (OpenAI, resume analysis)
2. `scraper.js` - Web scraping for placement news
3. `sentiment.js` - Sentiment analysis
4. `email.js` - Email service
5. `upload.js` - File upload handling
6. `errorHandler.js` - Global error handling
7. `notFound.js` - 404 handler

### Server Middleware
1. `upload.js` - File upload middleware
2. `errorHandler.js` - Error handling middleware
3. `notFound.js` - Not found middleware

## Key Features Implementation

### 1. Authentication System
- JWT-based authentication
- Role-based access control
- Password hashing with bcrypt
- Rate limiting for security

### 2. File Upload System
- Cloudinary integration for image storage
- File type and size validation
- Multiple file upload support

### 3. AI Integration
- OpenAI integration for resume analysis
- Sentiment analysis for community posts
- Smart matching for lost & found items

### 4. Real-time Features
- Socket.io for real-time notifications
- Live updates for events and posts

### 5. Security Features
- Input sanitization
- XSS protection
- CORS configuration
- Rate limiting
- Helmet for security headers

## API Endpoints Structure

### Authentication
- POST /api/auth/register
- POST /api/auth/login
- GET /api/auth/me
- PUT /api/auth/profile
- POST /api/auth/refresh

### Events
- GET /api/events
- POST /api/events
- GET /api/events/:id
- PUT /api/events/:id
- DELETE /api/events/:id
- POST /api/events/:id/register

### Lost & Found
- GET /api/lost-found
- POST /api/lost-found
- GET /api/lost-found/:id
- PUT /api/lost-found/:id
- DELETE /api/lost-found/:id

### Community
- GET /api/community
- POST /api/community
- GET /api/community/:id
- PUT /api/community/:id
- DELETE /api/community/:id

### Placement
- GET /api/placement
- POST /api/placement
- GET /api/placement/:id

### Resume
- POST /api/resume/analyze
- GET /api/resume/analysis/:id

## Testing

### Run Tests
```bash
# Server tests
cd server
npm test

# Client tests
cd client
npm test
```

## Deployment

### Docker
```bash
# Build and run with Docker Compose
docker-compose up --build
```

### Manual Deployment
1. Build the client application
2. Set production environment variables
3. Deploy to your preferred hosting service
4. Set up MongoDB in production
5. Configure Cloudinary for file storage

## Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## License
MIT License - see LICENSE file for details

## Support
For support, please contact: support@campuscompanion.com