docker run -itd --name Abathur -v ~/:/root -p 3000:3000 python:2-slim;
docker exec Abathur "pip install Flask";
docker exec Abathur "from flask import Flask";
docker exec Abathur "app = Flask(__name__)";
docker exec Abathur "@app.route('/')";
docker exec Abathur "def hello_world():";
docker exec Abathur "	return "Hello World!"";
