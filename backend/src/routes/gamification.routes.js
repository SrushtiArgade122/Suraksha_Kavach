const express = require('express');
const router = express.Router();

// Basic test route
router.get('/test', (req, res) => {
    res.json({ success: true, message: "Route is working" });
});

module.exports = router;