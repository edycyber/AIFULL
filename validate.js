// validate.js
async function validate() {
    const code = document.getElementById('codeInput').value.trim();
    
    const response = await fetch('/validate-code', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ code }),
    });
    
    const result = await response.json();
    
    if (result.success) {
        window.location.href = 'home.html';
    } else {
        window.location.href = 'https://sparrowaionline.gumroad.com/l/premiumplanAI';
    }
}



