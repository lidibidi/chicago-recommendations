CREATE DATABASE chicago_recs;
\c chicago_recs
CREATE TABLE recommendations( id SERIAL PRIMARY KEY, contributor TEXT,  place TEXT, notes TEXT, type_of_place TEXT);
