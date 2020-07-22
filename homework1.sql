-- Create a new database called migracode_classes (hint: use createdb in the terminal)

-- Save the next instructions in a file with the name migracode_classes.sql, the idea is to build a script like the one we used in Exercise 5

-- Create a new table mentors, for each mentor we want to save their name, how many years they lived in Barcelona, their address and their favourite 
-- programming language.

	CREATE TABLE mentors (
	id           SERIAL PRIMARY KEY,
	name         VARCHAR(50),
	years_in_barcelona   VARCHAR(20),
	address      VARCHAR(100),
	programming_language     VARCHAR(50)
	)	

-- Insert 5 mentors in the mentors 

insert into mentors (name,years_in_barcelona,address,programming_language) Values('teacher1','4','Carrer 1 de playa','GO');
	insert into mentors (name,years_in_barcelona,address,programming_language) Values('teacher2','4','Carrer marina 180','Javascript');
		insert into mentors (name,years_in_barcelona,address,programming_language) Values('teacher3','8','Carrer de Corcega 9','Javascript');
			insert into mentors (name,years_in_barcelona,address,programming_language) Values('teacher4','12','Carrer Llacuna 45','PHP');
				insert into mentors (name,years_in_barcelona,address,programming_language) Values('teacher5','9','Carrer Lull 198','Java');



-- Create a new table students, for each student we want to save their name, address and age.

	create table students (
id     SERIAL primary key,
name      VARCHAR(50) NOT NULL,
address   VARCHAR (50) NOT null,
age       INT NOT NULL
);


-- Insert 10 students in the students table.

insert into students (name,address,age) values ('Alexei Garban','Dr  Rizal, GRacia, Bcn','36');
	insert into students (name,address,age) values ('Ricardo','Sagrada Fam, Bcn','21');
		insert into students (name,address,age) values ('Ion','carrer 1, Bcn','45');
			insert into students (name,address,age) values ('Eshan','Carrer Entenca, Bcn','22');
				insert into students (name,address,age) values ('Alexei Valdez','Carrer Roselló','30');
					insert into students (name,address,age) values ('Esteban','Barceloneta','50');
						insert into students (name,address,age) values ('Josel','Gracia, Bcn','32');
							insert into students (name,address,age) values ('Amadou','Eixample','21');
								insert into students (name,address,age) values ('Jose Arriaga','Carrer Ganduxer','32');
									insert into students (name,address,age) values ('Jose Cobo','carrer de la playa','43');

-- Verify that the data you created for mentors and students are correctly stored in their respective tables (hint: use a select SQL statement).

	select * from students
	select * from mentors

-- Create a new classes table to record the following information:

-- A class has a leading mentor
-- A class has a topic (such as Javascript, NodeJS)
-- A class is taught at a specific date and at a specific location
-- Insert a few classes in the classes table

create table classes (
id    SERIAL PRIMARY KEY,
leading_mentor  INT REFERENCES mentors(id),
topic     VARCHAR(50) NOT NULL,
location  VARCHAR(50) NOT NULL,
date      DATE NOT NULL
)

insert into classes (leading_mentor,topic,location, date) values('')
-- We now want to store who among the students attends a specific class. How would you store that? Come up with a solution and insert some data if you model this as a new table.
-- Answer the following questions using a select SQL statement:

-- Retrieve all the mentors who lived more than 5 years in Barcelona
select * from mentors where years_in_barcelona > 5

-- Retrieve all the mentors whose favourite language is Javascript
select * from mentors where programming_language = "Javascript"

-- Retrieve all the students under 25 years old
select * from students where age < 25 

-- Retrieve all the classes taught before June this year
SELECT * FROM classes WHERE date < '2020-01-07' 

-- NOT COMPLETE
-- Retrieve all the students (retrieving student ids only is fine) who attended the Javascript class (or any other class that you have in the classes table).


