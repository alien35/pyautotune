from flask import Flask
import warnings
import sys
import numpy as np
import scikits.audiolab as audiolab 
import AutoTune

app = Flask(__name__)

@app.route("/")
def hello():
    return np.__version__


if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
