from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import mysql.connector
import re
import threading
import webbrowser


app = Flask(__name__)

app.secret_key = 'dev'

def db_connect():
    return mysql.connector.connect(
        host="localhost",
        user="mytspark03",
        password="3sport0rg$",
        database="cs348proj")

@app.route('/', methods=['GET', 'POST'])
def home():
    return render_template('homepage.html')

@app.route('/organizations', methods=['GET', 'POST'])
def organizations():
    return render_template('organizations.html')

@app.route('/registermember', methods=['GET', 'POST'])
def registermember():
    connection = db_connect()
    
    ocursor = connection.cursor()
    ocursor.callproc('GetOrgNames')
    organizations = [row for result in ocursor.stored_results() for row in result.fetchall()]
    ocursor.close()

    gcursor = connection.cursor()
    gcursor.callproc('GetGameNames')
    games = [row for result in gcursor.stored_results() for row in result.fetchall()]
    gcursor.close()

    if request.method == 'POST':
        name = request.form['fullname']
        age = int(request.form['age'])
        years = int(request.form['years'])
        orgID = request.form['organization'] or None
        game = request.form['game']
        member = request.form['member']

        icursor = connection.cursor(prepared="True")
        try:
            icursor.execute("BEGIN")
            query = "INSERT INTO members (Name, Age, Years_Experience, Org_ID, Game, Role) VALUES (%s,%s,%s,%s,%s,%s)"
            icursor.execute(query, (name, age, years, orgID, game, member))
            connection.commit()
        except Exception as e:
            icursor.execute("ROLLBACK")
        finally:
            icursor.close()

        return redirect(url_for('registermember'))
    
    connection.close()
    
    return render_template('registermember.html', organizations=organizations, games=games)

@app.route('/editmember', methods=['GET', 'POST'])
def editmember():
    connection = db_connect()

    mcursor = connection.cursor()
    mcursor.callproc('GetMemNames')
    members = [row for result in mcursor.stored_results() for row in result.fetchall()]
    mcursor.close()
    
    ocursor = connection.cursor()
    ocursor.callproc('GetOrgNames')
    organizations = [row for result in ocursor.stored_results() for row in result.fetchall()]
    ocursor.close()

    gcursor = connection.cursor()
    gcursor.callproc('GetGameNames')
    games = [row for result in gcursor.stored_results() for row in result.fetchall()]
    gcursor.close()

    if request.method == 'POST':
        memID = request.form['memname']
        name = request.form['fullname']
        age = int(request.form['age'])
        years = int(request.form['years'])
        orgID = request.form['organization'] or None
        game = request.form['game']
        member = request.form['member']

        ucursor = connection.cursor(prepared="True")
        try:
            ucursor.execute("BEGIN")
            query = "UPDATE members SET Name = %s, Age = %s, Years_Experience = %s, Org_ID = %s, Game = %s, Role = %s WHERE Member_ID = %s"
            ucursor.execute(query, (name, age, years, orgID, game, member, memID))
            connection.commit()
        except Exception as e:
            ucursor.execute("ROLLBACK")
        finally:
            ucursor.close()

        return redirect(url_for('editmember'))
    
    connection.close()
    
    return render_template('editmember.html', members=members, organizations=organizations, games=games)

@app.route('/deletemember', methods=['GET', 'POST'])
def deletemember():
    connection = db_connect()

    mcursor = connection.cursor()
    mcursor.callproc('GetMemNames')
    members = [row for result in mcursor.stored_results() for row in result.fetchall()]
    mcursor.close()

    if request.method == 'POST':
        memID = request.form['memname']
        dcursor = connection.cursor()
        try:
            dcursor.execute("BEGIN")
            dcursor.execute("DELETE FROM members WHERE Member_ID = %s", (memID,))
            connection.commit()
        except Exception as e:
            dcursor.execute("ROLLBACK")
        finally:
            dcursor.close()

        return redirect(url_for('deletemember'))
    
    connection.close()
    return render_template('deletemember.html', members=members)

@app.route('/createorganization', methods=['GET', 'POST'])
def createorganization():
    connection = db_connect()
    
    ccursor = connection.cursor()
    ccursor.callproc('GetCities')
    cities = [row for result in ccursor.stored_results() for row in result.fetchall()]
    ccursor.close()

    if request.method == 'POST':
        name = request.form['name']
        cityID = request.form['city']
        
        icursor = connection.cursor(prepared="True")
        try:
            icursor.execute("BEGIN")
            query = "INSERT INTO organizations (Name, City_ID) VALUES (%s,%s)"
            icursor.execute(query, (name, cityID))
            connection.commit()
        except Exception as e:
            icursor.execute("ROLLBACK")
        finally:
            icursor.close()

        return redirect(url_for('createorganization'))
    
    connection.close()
    
    return render_template('createorganization.html', cities=cities)

@app.route('/adjustorganization', methods=['GET', 'POST'])
def adjustorganization():
    connection = db_connect()

    ocursor = connection.cursor()
    ocursor.callproc('GetOrgNames')
    organizations = [row for result in ocursor.stored_results() for row in result.fetchall()]
    ocursor.close()
    
    ccursor = connection.cursor()
    ccursor.callproc('GetCities')
    cities = [row for result in ccursor.stored_results() for row in result.fetchall()]
    ccursor.close()

    if request.method == 'POST':
        orgID = request.form['orgname']
        name = request.form['name']
        cityID = request.form['city']
        
        ucursor = connection.cursor(prepared="True")
        try:
            ucursor.execute("BEGIN")
            query = "UPDATE organizations SET Name = %s, City_ID = %s WHERE Org_ID = %s"
            ucursor.execute(query, (name, cityID, orgID))
            connection.commit()
        except Exception as e:
            ucursor.execute("ROLLBACK")
        finally:
            ucursor.close()

        return redirect(url_for('adjustorganization'))
    
    connection.close()
    
    return render_template('adjustorganization.html', organizations=organizations, cities=cities)

@app.route('/disbandorganization', methods=['GET', 'POST'])
def disbandorganization():
    connection = db_connect()

    ocursor = connection.cursor()
    ocursor.callproc('GetOrgNames')
    organizations = [row for result in ocursor.stored_results() for row in result.fetchall()]
    ocursor.close()

    if request.method == 'POST':
        orgID = request.form['orgname']
        dcursor = connection.cursor()
        try:
            dcursor.execute("BEGIN")
            dcursor.execute("DELETE FROM organizations WHERE Org_ID = %s", (orgID,))
            connection.commit()
        except Exception as e:
            dcursor.execute("ROLLBACK")
        finally:
            dcursor.close()

        return redirect(url_for('disbandorganization'))
    
    connection.close()
    
    return render_template('disbandorganization.html', organizations=organizations)

@app.route('/orgstatistics', methods=['GET', 'POST'])
def orgstatistics():
    options = [
        (1, "Alphabetically"),
        (2, "Number of Members"),
        (3, "Projected Earnings"),
        (4, "Average Experience Level")]
    
    return render_template('orgstatistics.html', options=options)

@app.route('/statsdisplay', methods=['GET', 'POST'])
def statsdisplay():
    connection = db_connect()
        
    if request.method == 'POST':
        limit = int(request.form.get('topn',100))
        sort = int(request.form.get('ordered',1))
        cursor = connection.cursor()

        cursor.callproc('GetStatsTable', [sort, limit])
        data = []
        for result in cursor.stored_results():
            data.extend(result.fetchall())
            column_names = [desc[0] for desc in result.description]
        cursor.close()
        connection.close()
    
    return render_template('statsdisplay.html', data=data, column_names=column_names)

def open_browser():
    webbrowser.open_new('http://127.0.0.1:5000/')

if __name__ == '__main__':
    threading.Timer(1, open_browser).start()
    app.run(debug=False)
