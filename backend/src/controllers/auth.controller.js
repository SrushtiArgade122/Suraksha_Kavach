const User = require('../models/User.model');
const jwt = require('jsonwebtoken');

// Helper to create JWT Token
const generateToken = (id) => {
    return jwt.sign({ id }, process.env.JWT_SECRET, { expiresIn: '30d' });
};

// @desc    Register new student
// @route   POST /api/auth/register
exports.registerUser = async (req, res, next) => {
    try {
        const { name, email, password, school } = req.body;

        const userExists = await User.findOne({ email });
        if (userExists) {
            return res.status(400).json({ success: false, message: 'User already exists' });
        }

        const user = await User.create({ name, email, password, school });

        res.status(201).json({
            success: true,
            token: generateToken(user._id),
            user: {
                id: user._id,
                name: user.name,
                email: user.email,
                school: user.school,
                totalPoints: user.totalPoints
            }
        });
    } catch (error) {
        next(error);
    }
};

// @desc    Authenticate student
// @route   POST /api/auth/login
exports.loginUser = async (req, res, next) => {
    try {
        const { email, password } = req.body;

        // Find user & include password for comparison
        const user = await User.findOne({ email }).select('+password');

        if (user && (await user.matchPassword(password))) {
            res.json({
                success: true,
                token: generateToken(user._id),
                user: {
                    id: user._id,
                    name: user.name,
                    email: user.email,
                    school: user.school,
                    totalPoints: user.totalPoints,
                    streak: user.streak
                }
            });
        } else {
            res.status(401).json({ success: false, message: 'Invalid email or password' });
        }
    } catch (error) {
        next(error);
    }
};