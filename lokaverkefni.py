import pymysql
from bottle import *

@get('/')
def index():
    return template('index')

@get('/inskranig')
def inskranigar():
    return template('inskranig')

@get('/nyskranig')
def nyskranigar():
    return template('nyskranig')

@route('/donyskra', method='POST')
def nyr():
    u = request.forms.get('user')
    p = request.forms.get('pass')
    n = request.forms.get('nafn')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
    cur = conn.cursor()

    cur.execute('SELECT count(*) FROM 0412012660_lokaverk01.users where user=%s',(u))
    result = cur.fetchone()

    if result[0] == 0:
        cur.execute('INSERT INTO 0412012660_lokaverk01.users Values(%s,%s,%s)',(u,p,n))
        conn.commit()
        cur.close()
        conn.close()
        return u," hefur verið skráður <br><a href='/'>Heim</a>"

    else:
        return u,"er frátekið notendanafn, reyndu aftur <br><a href='/#ny'>Nýskrá</a>"

@route('/doinnskra', method='POST')
def doinn():
    u = request.forms.get('user')
    p = request.forms.get('pass')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
    cur = conn.cursor()

    cur.execute('SELECT count(*) FROM 0412012660_lokaverk01.users where user=%s and pass=%s',(u,p))
    result = cur.fetchone()
    print(result)

    if result[0]== 1:

        cur.close()
        conn.close()
        return template('Adminsidan', u=u)
    else:
        return template('neitakk')

@route('/nyfrett', method='POST')
def news():
    i = request.forms.get('ID')
    s = request.forms.get('story')
    a = request.forms.get('author')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
    cur = conn.cursor()
    cur.execute("SELECT count(*) FROM 0412012660_lokaverk01.users where user = %s", (a))
    result = cur.fetchone()
#    print('INSERT INTO 0412012660_lokaverk01.frett Values(%s,%s,%s)',(i,s,a))
    if result[0]== 1:
        cur.execute('INSERT INTO 0412012660_lokaverk01.frett Values(%s,%s,%s)',(i,s,a))
        conn.commit()
        cur.close()
        conn.close()
        return template('/',i=i,s=s,a=a)
    else:
        return template('neitakk')

@route('/breyta_frett', method='POST')
def get_auther():
    a = request.forms.get('author')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
    cur = conn.cursor()
    cur.execute('SELECT count(*) FROM 0412012660_lokaverk01.frett where author=%s',(a))
    result = cur.fetchall()
    conn.commit()
    cur.close()
    conn.close()
    return template('breyta_frett', cur=result)
@route('/breyta', method='POST')
def edit_story():
    i = request.forms.get('ID')
    s = request.forms.get('story')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
    cur = conn.cursor()

    takki = request.forms.get('breyta')

    if takki == 'Breyta':
        conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
        cur = conn.cursor()
        cur.execute("Update 0412012660_lokaverk01.frett set story='{}' where ID='{}'".format(s,i))
        conn.commit()
        cur.close()
        conn.close()
        redirect('/')
    else:
        conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='0412012660',passwd='mypassword', db='0412012660_lokaverk01')
        cur = conn.cursor()
        cur.execute("Delete 0412012660_lokaverk01.frett where ID='{}'".format(i))
        conn.commit()
        cur.close()
        conn.close()
        redirect('/')

#====================================================
@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./static/')
#====================================================


@route('/members')
def member():
    conn = pymysql.connect(host="tsuts.tskoli.is",port=3306,user="0412012660",password="mypassword", db='0412012660_lokaverk01')
    c = conn.cursor()
    c.execute("SELECT * FROM 0412012660_lokaverk01.users")
    result = c.fetchall()
    c.close()
    output = template('members',rows = result)
    return output

try:
    run(host="0.0.0.0", port=os.environ.get('PORT'))

except:
    run(host='localhost', port= 7000, debug=True)
