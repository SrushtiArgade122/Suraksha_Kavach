// backend/src/models/Question.model.js

const mongoose = require('mongoose');

const questionSchema = new mongoose.Schema({
  question: {
    type: String,
    required: true,
    trim: true,
  },
  options: {
    type: [String],
    required: true,
    validate: [(v) => v.length === 4, 'Must have exactly 4 options'],
  },
  correctIndex: {
    type: Number,
    required: true,
    min: 0,
    max: 3,
  },
  explanation: {
    type: String,
    required: true,
  },
  disasterType: {
    type: String,
    required: true,
    enum: ['fire', 'flood', 'earthquake', 'cyclone', 'tsunami', 'general'],
  },
  difficulty: {
    type: Number,
    default: 1,
    min: 1,
    max: 3, // 1=easy, 2=medium, 3=hard
  },
  points: { type: Number, default: 10 },
  language: {
    type: String,
    default: 'en',
    enum: ['en', 'hi', 'mr'],
  },
  isActive: { type: Boolean, default: true },
  source: { type: String }, // Reference/citation
}, { timestamps: true });

// Indexes for performance
questionSchema.index({ disasterType: 1, language: 1 });
questionSchema.index({ difficulty: 1 });

module.exports = mongoose.model('Question', questionSchema);


// backend/src/models/Score.model.js
const scoreSchema = new mongoose.Schema({
  userId: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
  userName: String,
  userSchool: String,
  disasterType: {
    type: String,
    required: true,
    enum: ['fire', 'flood', 'earthquake', 'cyclone', 'general', 'all'],
  },
  score: { type: Number, required: true, min: 0 },
  totalQuestions: { type: Number, required: true },
  percentage: { type: Number, required: true, min: 0, max: 100 },
  pointsEarned: { type: Number, default: 0 },
  timeTaken: { type: Number }, // seconds
  badgesAwarded: [String],
  isGameScore: { type: Boolean, default: false },
  gameType: { type: String }, // fire_escape, flood_survival, earthquake_safe
}, { timestamps: true });

scoreSchema.index({ userId: 1, createdAt: -1 });
scoreSchema.index({ percentage: -1 }); // For leaderboard

module.exports = mongoose.model('Score', scoreSchema);
