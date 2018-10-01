from flask import Flask , render_template, request, session, redirect
import os
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail
import json

with open('config.json', 'r')as c:
    params = json.load(c)["params"]
local_server = True
app = Flask(__name__)
app.secret_key = "super-secret-key"
app.config['UPLOAD_FOLDER'] = params['upload_location']
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME=params['user'],
    MAIL_PASSWORD=params['pass']

)
mail = Mail(app)

app.url_map.strict_slashes = False
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['pro_uri']

db = SQLAlchemy(app)
class Contact(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False, nullable=False)
    email = db.Column(db.String(20), unique=False, nullable=False)
    num = db.Column(db.String(12), unique=False, nullable=False)
    message = db.Column(db.String(120), unique=False, nullable=False)
    date = db.Column(db.String(12), unique=False, nullable=True)
class Post(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), unique=False, nullable=False)
    content = db.Column(db.String(20), unique=False, nullable=False)
    date = db.Column(db.String(12), unique=False, nullable=False)
    slug = db.Column(db.String(120), unique=False, nullable=False)
    file_image = db.Column(db.String(12), unique=False, nullable=True)

@app.route("/")
def home():
    posts = Post.query.filter_by().all()
    return render_template('index.html', params=params, posts=posts)

@app.route("/about")
def about():
    return render_template('about.html', params=params)
@app.route("/logout")
def logout():
    session.pop('user')
    return redirect('/dashboard')
@app.route("/edit/<string:id>", methods = ['GET', 'POST'])
def edit(id):
    if('user' in session and session['user'] == params['admin_user']):
        if request.method=="POST":
            title = request.form.get('title')
            content = request.form.get('content')
            slug = request.form.get('slug')
            img_file = request.form.get('img_file')
            date = datetime.now()
            if id=='0':
                post = Post(title=title, content=content, date=date, slug=slug, file_image=img_file)
                db.session.add(post)
                db.session.commit()
            else:
                post= Post.query.filter_by(id=id).first()
                post.title = title
                post.content = content
                post.date = date
                post.slug = slug
                post.file_image = img_file
                db.commit()
                return request('/edit/'+id)
        post = Post.query.filter_by(id=id).first()
        return render_template('edit.html', params=params, post=post)



@app.route("/dashboard", methods = ['GET', 'POST'])
def dashboard():
    if ('user' in session and session['user'] == params['admin_user']):
        p = Post.query.all()
        return render_template('dashboard.html', params=params, p=p)
    if request.method == "POST":
        username =  request.form.get('uname')
        userpass =  request.form.get('pass')
        if (username == params['admin_user'] and userpass == params['admin_pass']):
            session['user'] = username
            p = Post.query.all()
            return render_template('dashboard.html', params=params, p=p)
    return render_template('login.html', params=params)
@app.route("/post/<string:post_slug>", methods = ['GET'])
def post(post_slug):
    po = Post.query.filter_by(slug=post_slug).first()
    return render_template('post.html', params=params, po=po)
@app.route("/contact", methods = ['GET', 'POST'])
def contact():

    if(request.method=="POST"):
       nam=request.form.get('name')
       mial=request.form.get('mail')
       mess=request.form.get('message')
       number=request.form.get('num')
       entry=Contact(name=nam, email=mial, num=number, message=mess, date=datetime.now())
       db.session.add(entry)
       db.session.commit()
       mail.send_message('Message from ' + nam,
                         sender=mial,
                         recipients=[params['user']],
                         body=mess + " \n "+number)
    return render_template('contact.html', params=params)

@app.route("/upload", methods = ['GET', 'POST'])
def upload():
    if ('user' in session and session['user'] == params['admin_user']):
        if(request.method=="POST"):
            f = request.files('file1')
            file = secure_filename(f.filename)
            f.save(os.path.join(app.config['UPLOAD_FOLDER'], file))
            return "Uploaded Successfully!"
if __name__=="__main__":
    app.run(debug=True)
