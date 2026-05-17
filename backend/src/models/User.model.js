const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');

const UserSchema = new mongoose.Schema({
    name: {
        type: String,
        required: [true, 'Please add a name'],
        trim: true
    },
    email: {
        type: String,
        required: [true, 'Please add an email'],
        unique: true,
        match: [/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/, 'Please add a valid email']
    },
    password: {
        type: String,
        required: [true, 'Please add a password'],
        minlength: 6,
        select: false // Don't return password in API calls by default
    },
    school: {
        type: String,
        default: "JSPM's RSCOE"
    },
    // Gamification Fields
    totalPoints: {
        type: Number,
        default: 0
    },
    streak: {
        type: Number,
        default: 0
    },
    badgesEarned: [{
        type: String // Stores badge IDs or names like 'Fire_Fighter_Level_1'
    }],
    lastQuizDate: {
        type: Date
    }
}, {
    timestamps: true,
    toJSON: { virtuals: true }, // Required to show the Preparedness Score in JSON
    toObject: { virtuals: true }
});

// ─── Gamification Logic ──────────────────────────

// Virtual field for Preparedness Score (0.0 to 1.0)
// This matches the logic used in your Flutter Dashboard
UserSchema.virtual('preparednessScore').get(function() {
    // Logic: 1000 points = 100% Prepared
    return Math.min(this.totalPoints / 1000, 1.0);
});

// ─── Security Middleware ──────────────────────────

// Encrypt password before saving to DB
UserSchema.pre('save', async function(next) {
    if (!this.isModified('password')) {
        next();
    }
    const salt = await bcrypt.genSalt(10);
    this.password = await bcrypt.hash(this.password, salt);
});

// Method to compare passwords during login
UserSchema.methods.matchPassword = async function(enteredPassword) {
    return await bcrypt.compare(enteredPassword, this.password);
};

module.exports = mongoose.model('User', UserSchema);