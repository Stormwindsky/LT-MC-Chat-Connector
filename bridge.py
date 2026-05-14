# Project: LT-MC-Chat-Connector (LTMCCC)
# Created by: Stormwindsky
# License: CC0 1.0 Universal
# Description: Central Flask hub for the Luanti-Minecraft bridge

from flask import Flask, request

app = Flask(__name__)
messages = {"luanti": "", "minecraft": ""}

@app.route('/send', methods=['POST'])
def send():
    data = request.json
    origin = data.get("origin")
    msg = data.get("msg")
    print(f"[{origin.upper()}] {msg}")
    
    target = "minecraft" if origin == "luanti" else "luanti"
    prefix = "<LT/MT> " if origin == "luanti" else "<MC Java> "
    messages[target] = f"{prefix}{msg}"
    return {"status": "ok"}

@app.route('/receive/<game>', methods=['GET'])
def receive(game):
    msg = messages.get(game, "")
    messages[game] = ""
    return {"msg": msg}

if __name__ == '__main__':
    print("LT-MC-Chat-Connector (LTMCCC) Server is starting...")
    app.run(port=5000)
