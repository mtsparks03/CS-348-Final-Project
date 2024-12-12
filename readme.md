Step 1. Ensure python and venv are installed, then create and activate the virtual environment.\
Step 2. Install the requirements: Flask, Flask-MySQLdb, and mysql-connector-python.\
Step 3. Start a MySQL server, and create the database by running db_create.sql.\
Step 4. Place the app.py file in the main working directory, and edit the credentials within db_connect() to match the running MySQL instance.\
Step 5. Move the templates folder with all of the .html files to the same main directory as app.py.\
Step 6. Run the app, it should automatically launch the web browser, but if not it is configured to run on http://127.0.0.1:5000/.\
