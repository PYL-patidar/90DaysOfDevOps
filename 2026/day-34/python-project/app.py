from flask import Flask, render_template, request
import sqlite3

app = Flask(__name__)

# Create database table
def init_db():
        conn = sqlite3.connect('users.db')
        cursor = conn.cursor()

        cursor.execute('''
            CREATE TABLE IF NOT EXISTS users (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT,
                email TEXT
             )
        ''')

        conn.commit()
        conn.close()

init_db()

@app.route('/', methods=['GET', 'POST'])
def index():
                        
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']

        conn = sqlite3.connect('users.db')
        cursor = conn.cursor()

        cursor.execute(
            "INSERT INTO users (name, email) VALUES (?, ?)",
            (name, email) 
        )
   

        conn.commit() 
        conn.close()
    return render_template('index.html')

if __name__ == "__main__":
    app.run(debug=True)
