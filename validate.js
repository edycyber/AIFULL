function validate() {
    const code = document.getElementById('codeInput').value.trim();
    
    const validCodes = ['AI1532', 'AI1234', 'AI9876','BP-4937','PP-59874','ASP-khgtesml45j','BPAI-65hgt33',
                       ];

    if (validCodes.includes(code)) {
        window.location.href = 'app.html';
    } else {
        window.location.href = 'https://sparrow-ai.online/premiumplan';
    }
}
