from flask import Flask, jsonify
import socket

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "message": "Welcome to the DevOps Demo App",
        "hostname": socket.gethostname()
    })

@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "uptime": "100%"
    })

@app.route("/status")
def status():
    return jsonify({
        "service": "DevOps Demo App",
        "version": "1.0.0",
        "status": "running"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
