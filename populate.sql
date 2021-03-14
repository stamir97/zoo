use zoo;

insert into
enclosure
(enclosure_id, enclosure_name, habitat, animal, location, hours)
values
(1, 'penguin parade', 'pool', 'penguin', 'hillside view', '0800-1800');

INSERT INTO 
ANIMALS
(animal_id, animal_name, species_name, animal_DOB, arrival_date)
VALUES
(1, 'Alex', 'lion', '2001-02-28', '2000-02-28'),
(2, 'Marty', 'zebra', '2004-05-23', '2006-03-08'),
(3, 'Melman', 'giraffe', '2006-08-19', '2010-04-01'),
(4, 'Gloria', 'hippopotamus', '2020-04-15', '2021-01-09'),
(5, 'Skipper', 'penguin', '2018-09-23', '2020-11-15'),
(6, 'Julien', 'lemur', '2016-12-16', '2016-12-16');

INSERT INTO feeding
(FoodType_ID, FoodType, animal_id, Amount_eats(kg))
VALUES 
(1, beef, 1, 5),
(2, grass, 2, 3),
(3, acacia, 3, 3),
(4, 'herbivore pellets', 4, 7),
(5, fish, 5, 10),
(6, insects, 6, 12);

INSERT INTO stock
(FoodType_ID, Amount_available Float)
VALUES
(1, 10),
(2, 1),
(3, 0),
(4, 15),
(5, 10),
(6, 20);
                                               
                                            
  
