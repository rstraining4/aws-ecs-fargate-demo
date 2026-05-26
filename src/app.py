from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '''
        <div style="font-size: 2em;">
            <h1>Hello, ECS Fargate!</h1>
            <p>Welcome to our Flask application running on ECS Fargate.</p>
        </div>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)