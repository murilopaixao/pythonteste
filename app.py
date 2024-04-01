from flask import Flask, render_template
import socket

app = Flask(__name__)

system_name = socket.getfqdn()
print(system_name)

@app.route('/')
def index():
    return render_template('index.html', system_name=system_name)

