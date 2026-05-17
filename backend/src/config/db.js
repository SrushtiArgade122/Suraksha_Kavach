/**
 * MONGODB CONNECTION CONFIG
 * Handles connection to local or cloud MongoDB instances
 */
const mongoose = require('mongoose');

const connectDB = async () => {
    try {
        // We use the URI from your .env file
        // Fallback to local MongoDB if the .env is missing
        const conn = await mongoose.connect(process.env.MONGODB_URI || 'mongodb://127.0.0.1:27017/suraksha_kavach');

        console.log(`
        📡 DATABASE STATUS:
        ✅ MongoDB Connected: ${conn.connection.host}
        📁 Database Name: ${conn.connection.name}
        `);
    } catch (error) {
        console.error(`
        ❌ DATABASE ERROR:
        Error Message: ${error.message}
        -----------------------------------------
        💡 TIP: Ensure your MongoDB Service is running!
        `);
        
        // Exit the entire Node.js process if the DB fails
        process.exit(1);
    }
};

module.exports = connectDB;