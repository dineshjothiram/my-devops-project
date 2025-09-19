from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/healthz")
def health():
    return jsonify(status="ok"), 200

@app.route("/metrics")
def metrics():
    return "app_requests_total 1", 200

@app.route("/")
def hello():
    return "Hello, DevOps CI/CD World Docker to Kubernetes!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
