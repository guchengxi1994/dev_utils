import json
from flask import Flask
from flask.json import jsonify

app = Flask(__name__)


@app.route("/testget", methods=["GET"])
def hello_world():
    return jsonify(
        {"code": 20000, "data": {"count": 1, "records": [], "obj": {"a": 1}}}
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0")
