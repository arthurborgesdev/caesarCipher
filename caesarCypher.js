require('dotenv').config()
const TOKEN = process.env.TOKEN;

const axios = require('axios');
const fs = require('fs');

axios.get('https://api.codenation.dev/v1/challenge/dev-ps/generate-data?token='+ TOKEN)
.then((res) => {
  console.log(`statusCode: ${res.statusCode}`)
  console.log(res.data)
  fs.writeFile("answer.json", JSON.stringify(res.data), function(err) {
    if (err) throw err;
    console.log('complete');
  })
})
.catch((error) => {
  console.error(error)
})