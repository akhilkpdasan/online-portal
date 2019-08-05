Requires python version 2.7.x  

Packages to install :-  
MySQL database server  

Packages to install using pip :-  
`pip install flask`  
`pip install MySQL-python`  

After installing above packages setup database :-   
Run the following commands on mysql console which can be launched by `mysql` command. 
 
- create a new database in mysql using :  
`create database TESTDB2;`  

- switch to that databse using:  
`use TESTDB2;`  

- import all tables and data into TESTDB2 using:  
`source march03.sql`  

Run the server using: `python app.py`
