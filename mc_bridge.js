// Project: LT-MC-Chat-Connector (LTMCCC)
// Created by: Stormwindsky
// License: CC0 1.0 Universal

const mineflayer = require('mineflayer');
const axios = require('axios');

const bot = mineflayer.createBot({
  host: 'localhost',
  port: 25565, 
  username: 'LTMCCC_Bot' // Changed bot name to match project
});

console.log("LT-MC-Chat-Connector (LTMCCC) Relay is starting...");

bot.on('chat', (username, message) => {
  if (username === bot.username) return;

  axios.post('http://127.0.0.1:5000/send', {
    origin: 'minecraft',
    msg: `${username}: ${message}`
  }).catch(err => console.log("LTMCCC Error:", err.message));
});

setInterval(async () => {
  try {
    const res = await axios.get('http://127.0.0.1:5000/receive/minecraft');
    if (res.data.msg) {
      bot.chat(res.data.msg);
    }
  } catch (err) {}
}, 2000);
