# Installing .sql and .sqlite3 Files

1. Place your SQL or SQLite file in a directory within your Django project. You can create a directory called fixtures in your app directory and put the file there.

    For example: 
    * 'your_project/your_app/fixtures/your_file.sql'
    * 'your_project/your_app/fixtures/your_file.sqlite3'

<br>

2. Open a terminal or command prompt

3. Navigate to the root directory of your Django project

4. Run the following command to load the data from the fixture file:
```sh
    python3 manage.py migrate
    python3 manage.py makemigrations <your_app>
    python3 manage.py loaddata your_file
```
** replace app name with your app name

** Replace your_file with the name of your fixture file, without the extension (e.g., your_file.sql or your_file.sqlite3 becomes your_file).