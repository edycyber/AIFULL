function validate() {
    const code = document.getElementById('codeInput').value.trim();
    
    const validCodes = ['AI1532','BPAI-65hgt33','PPAI-27jkhg7',
                       ];

    if (validCodes.includes(code)) {
        window.location.href = 'app.html';
    } else {
        window.location.href = 'https://sparrowaionline.gumroad.com/l/premiumplanAI';
    }
}
