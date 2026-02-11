from flask import Flask
port=8080
app = Flask(__name__)
@app.route('/')
def hello_world():
   return 'Hello! I am a Flask application'
if __name__ == '__main__':
   print("listening on port: ",port)   
   app.run(host='0.0.0.0', port=port)

