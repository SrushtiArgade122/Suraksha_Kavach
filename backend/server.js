/**
 * SURAKSHA KAVACH - Server Entry Point
 * Disaster Preparedness and Response Education System
 */

const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
const morgan = require('morgan'); // Added for request logging
require('dotenv').config();

// Configuration & DB Integration
const connectDB = require('./src/config/db');

// Route Imports
const authRoutes = require('./src/routes/auth.routes');
const quizRoutes = require('./src/routes/quiz.routes');
const leaderboardRoutes = require('./src/routes/leaderboard.routes');
const gamificationRoutes = require('./src/routes/gamification.routes');

// Middleware Imports
const { errorHandler } = require('./src/middleware/error.middleware');

const app = express();
const PORT = process.env.PORT || 3000;

// 1. Database Connection
// Connects using settings in src/config/db.js and .env
connectDB();

// 2. Global Middlewares
app.use(helmet()); // Security headers
app.use(cors({
    origin: process.env.ALLOWED_ORIGINS?.split(',') || '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
    allowedHeaders: ['Content-Type', 'Authorization'],
}));
app.use(morgan('dev')); // Log requests to console for easier debugging
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true }));

// 3. API Rate Limiting
// Protects the server from brute force (especially crucial for SOS alerts)
const limiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 100, // Limit each IP to 100 requests per window
    message: { 
        success: false, 
        message: 'Too many requests from this IP, please try again after 15 minutes.' 
    },
    standardHeaders: true,
    legacyHeaders: false,
});
app.use('/api/', limiter);

// 4. API Routes
app.use('/api/auth', authRoutes);
app.use('/api/quiz', quizRoutes);
app.use('/api/leaderboard', leaderboardRoutes);
app.use('/api/gamification', gamificationRoutes);

// 5. System Health Check
// Used by the Flutter app to verify connectivity during "Offline Mode" transitions
app.get('/api/health', (req, res) => {
    const mongoose = require('mongoose');
    res.status(200).json({
        success: true,
        status: 'Suraksha Kavach Server is Healthy',
        database: mongoose.connection.readyState === 1 ? 'Connected' : 'Disconnected',
        uptime: process.uptime(),
        timestamp: new Date().toISOString()
    });
});

// 6. 404 Handler for undefined routes
app.use((req, res, next) => {
    res.status(404).json({
        success: false,
        message: `Route ${req.originalUrl} not found`
    });
});

// 7. Global Error Middleware
// Must be the LAST middleware to catch all errors passed by next()
app.use(errorHandler);

// 8. Execution
const server = app.listen(PORT, () => {
    console.log(`
    🛡️  SURAKSHA KAVACH BACKEND ACTIVE
    🚀 Running on: http://localhost:${PORT}
    📡 Health Check: http://localhost:${PORT}/api/health
    `);
});

// Handle unhandled promise rejections (e.g., DB connection loss)
process.on('unhandledRejection', (err) => {
    console.error(`Error: ${err.message}`);
    // Close server & exit process
    server.close(() => process.exit(1));
});

module.exports = app;