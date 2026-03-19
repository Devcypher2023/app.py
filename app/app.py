from flask import Flask, jsonify1
import os

app = Flask(__name__)

APP_VERSION = os.getenv("APP_VERSION", "1.0.0")

@app.route("/")
def home():
    return f"""
    <h1>Standardized CI/CD Demo App</h1>
    <p>Application version: {APP_VERSION}</p>
    <p>Status: Running</p>
    """

@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "version": APP_VERSION
    }), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000) 