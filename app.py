from flask import Flask

app = Flask(__name__)

def mensagem():
    return "Olá, DevOps!"

@app.route("/")
def index():
    return mensagem()

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)