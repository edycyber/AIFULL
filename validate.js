// validate.js
require('dotenv').config(); // Load .env file

// Get valid codes from environment variables and split them into an array
const validCodes = process.env.VALID_CODES.split(',');

function validate() {
    const code = document.getElementById('codeInput').value.trim();

    if (validCodes.includes(code)) {
        window.location.href = 'home.html';
    } else {
        window.location.href = 'https://sparrowaionline.gumroad.com/l/premiumplanAI';
    }
}




