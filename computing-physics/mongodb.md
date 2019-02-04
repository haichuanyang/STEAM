https://github.com/Data-to-Insight-Center/PRAGMA-Data-Repository

python

matplotlib in python for graphing

jupyter notebook

MongoDB Atlas,  database as a service, 
MongoDB Compass,our schema visualization tool,

document model - data model
json
mongo is document db, hierarchy; not rows in relational db
key-value; can be flat
dictionary in python
single request to db - efficient, no joins

easy to import - indexes

CRUD - 

no need to set up schema first, no setup tables - collections


facet

aggrgation framework


Binary Import and Export Tools

Replace PASSWORD with the password for the admin user and DATABASE with the name of the database you wish to import/export to your cluster.

mongorestore  | creates a new database or adds data to an existing database. By default, mongorestore reads the database dump in the dump/ sub-directory of the current directory; to restore from a different directory, pass in the path to the directory as a final argument.
mongorestore --host mflix-shard-0/mflix-shard-00-00-q2d6u.mongodb.net:27017,mflix-shard-00-01-q2d6u.mongodb.net:27017,mflix-shard-00-02-q2d6u.mongodb.net:27017 --ssl --username analytics --password <PASSWORD> --authenticationDatabase admin

mongodump  | creates a binary export of the contents of a database
mongodump --host mflix-shard-0/mflix-shard-00-00-q2d6u.mongodb.net:27017,mflix-shard-00-01-q2d6u.mongodb.net:27017,mflix-shard-00-02-q2d6u.mongodb.net:27017 --ssl --username analytics --password <PASSWORD> --authenticationDatabase admin --db <DATABASE>
Data Import and Export Tools

Replace PASSWORD with the password for the admin user, DATABASE with the name of the database you wish to import/export to your cluster, and COLLECTION with the name of the collection you wish to import/export to your cluster. Replace FILETYPE with json or csv to specify the file type. Where applicable, replace FILENAME with the location and name of the output file (for export) or data source (for import).

NOTE: When exporting or importing CSV data, an additional --fields flag is often required. See documentation for the specific tool for additional details.

mongoimport  | imports content from an Extended JSON, CSV, or TSV export
mongoimport --host mflix-shard-0/mflix-shard-00-00-q2d6u.mongodb.net:27017,mflix-shard-00-01-q2d6u.mongodb.net:27017,mflix-shard-00-02-q2d6u.mongodb.net:27017 --ssl --username analytics --password <PASSWORD> --authenticationDatabase admin --db <DATABASE> --collection <COLLECTION> --type <FILETYPE> --file <FILENAME>

mongoexport  | produces a JSON or CSV export of data stored in a MongoDB instance
mongoexport --host mflix-shard-0/mflix-shard-00-00-q2d6u.mongodb.net:27017,mflix-shard-00-01-q2d6u.mongodb.net:27017,mflix-shard-00-02-q2d6u.mongodb.net:27017 --ssl --username analytics --password <PASSWORD> --authenticationDatabase admin --db <DATABASE> --collection <COLLECTION> --type <FILETYPE> --out <FILENAME>
Set Up Diagnostics

Replace PASSWORD with the password for the admin user.

mongostat  | provides a quick overview of the status of a currently running mongod or mongos instance
mongostat --host mflix-shard-0/mflix-shard-00-00-q2d6u.mongodb.net:27017,mflix-shard-00-01-q2d6u.mongodb.net:27017,mflix-shard-00-02-q2d6u.mongodb.net:27017 --ssl --username analytics --password <PASSWORD> --authenticationDatabase admin

mongotop  | tracks the amount of time a MongoDB instance spends reading and writing data
mongotop --host mflix-shard-0/mflix-shard-00-00-q2d6u.mongodb.net:27017,mflix-shard-00-01-q2d6u.mongodb.net:27017,mflix-shard-00-02-q2d6u.mongodb.net:27017 --ssl --username analytics --password <PASSWORD> --authenticationDatabase admin 
