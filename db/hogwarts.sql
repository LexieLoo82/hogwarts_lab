DROP TABLE students;
DROP TABLE houses;

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_name VARCHAR(255),
  age INT4
);
