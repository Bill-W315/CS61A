.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";



CREATE TABLE matchmaker AS
  SELECT s1.pet, s1.song, s1.color, s2.color FROM students AS s1, students AS s2 WHERE s1.pet = s2.pet AND s1.song = s2.song AND s1.time < s2.time;


CREATE TABLE sevens AS
  SELECT s1.seven FROM students AS s1, numbers AS num2 WHERE s1.time = num2.time AND s1.number = 7 AND num2.'7' = 'True';


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) AS count FROM students GROUP BY pet ORDER BY count DESC LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, COUNT(*) FROM students WHERE pet = 'dog';


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(*) AS count FROM bluedog_songs GROUP BY song ORDER BY count DESC;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(*) FROM students WHERE seven='7' GROUP BY instructor;

