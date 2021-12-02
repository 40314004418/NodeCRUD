const axios = require('axios');

const httpClient = axios.create({
    baseURL:'http://localhost:5000',
    timeout: 20000, // indicates, 1000ms ie. 1 second
    headers: {
        "Content-Type": "application/json",
    },
    
});

module.exports = httpClient;