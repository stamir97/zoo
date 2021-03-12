-- Create the database and tables

create database zoo; -- create the overall zoo database

use zoo; -- use this database to create tables

--enclosure table
create table enclosure(

enclosure_id varchar(10) not null,
enclosure_name varchar(20),
allocated_zookeeper varchar(20),
habitat varchar(20),
species varchar(20),
opening_hours varchar(10),

constraint 
enclosure_pk 
primary key
(enclosure_id),

foreign key
(species)
REFERENCES
animals
(species_name),

foreign key
(allocated_zookeeper)
REFERENCES
zookeeper
(employee_id)
);

-- zookeeper table
CREATE TABLE zookeeper
(
	employee_id INT NOT NULL,
    full_name VARCHAR(55) NOT NULL,
    job_title VARCHAR(55),
    hire_date DATE NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
    allocated_enclosure VARCHAR(55),
    contact_number VARCHAR(55),
    CONSTRAINT employee_id_pk PRIMARY KEY(employee_id),
	  CONSTRAINT employee_id_fk FOREIGN KEY(full_name) REFERENCES xxx
    );

-- animal table
CREATE TABLE ANIMALS
(
    animal_id INT NOT NULL PRIMARY KEY,
    animal_name VARCHAR(50) NOT NULL,
    species_name VARCHAR(50) NOT NULL,
    animal_DOB DATE,
    arrival_date DATE NOT NULL
);

-- feeding table
CREATE TABLE feeding (
	FoodType_ID INT,
	FoodType VARCHAR(50),
    Animal VARCHAR(100),
	Amount_eats FLOAT(2),
	CONSTRAINT feeding_PK PRIMARY KEY (FoodType_ID)
    );

-- stock table
CREATE TABLE stock (
	FoodType_ID INT,
    Amount_available Float(2),
    CONSTRAINT FoodType_ID_fk FOREIGN KEY (FoodType_ID) REFERENCES feeding
    );
