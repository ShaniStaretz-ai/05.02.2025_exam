DROP TABLE if EXISTS tourists;

CREATE TABLE tourists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    passport_number TEXT UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    gender TEXT CHECK(gender IN ('Male', 'Female', 'Other')) NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT UNIQUE NOT NULL,
    country_id INTEGER NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

  CREATE TABLE tourist_tour (
  tourist_id INTEGER NOT NULL,
  tour_id INTEGER NOT NULL,
                PRIMARY KEY(tourist_id, tour_id)
     FOREIGN KEY (tourist_id) REFERENCES tourists(id)
     FOREIGN KEY (tour_id) REFERENCES tours(id)
);
INSERT INTO tourists (first_name, last_name, passport_number, date_of_birth, gender, email, phone, country_id) VALUES
('Leonardo', 'DiCaprio', 'P123456', '1974-11-11', 'Male', 'leo.d@gmail.com', '+1-555123456', 1),
('Brad', 'Pitt', 'P234567', '1963-12-18', 'Male', 'brad.p@hotmail.com', '+1-555234567', 1),
('Tom', 'Cruise', 'P345678', '1962-07-03', 'Male', 'tom.c@amazon.com', '+1-555345678', 1),
('Scarlett', 'Johansson', 'P456789', '1984-11-22', 'Female', 'scarlett.j@gmail.com', '+1-555456789', 2),
('Natalie', 'Portman', 'P567890', '1981-06-09', 'Female', 'natalie.p@hotmail.com', '+1-555567890', 2),
('Tyrion', 'Lannister', 'P678901', '1978-05-25', 'Male', 'tyrion.l@amazon.com', '+1-555678901', 3),
('Jon', 'Snow', 'P789012', '1986-12-26', 'Male', 'jon.s@gmail.com', '+1-555789012', 3),
('Arya', 'Stark', 'P890123', '1996-03-10', 'Female', 'arya.s@hotmail.com', '+1-555890123', 4),
('Daenerys', 'Targaryen', 'P901234', '1990-04-20', 'Female', 'dany.t@amazon.com', '+1-555901234', 4),
('Jaime', 'Lannister', 'P012345', '1975-09-17', 'Male', 'jaime.l@gmail.com', '+1-555012345', 5),
('Peter', 'Dinklage', 'P112345', '1969-06-11', 'Male', 'peter.d@hotmail.com', '+1-555112345', 5),
('Jason', 'Momoa', 'P212345', '1979-08-01', 'Male', 'jason.m@amazon.com', '+1-555212345', 6),
('Kit', 'Harington', 'P312345', '1986-12-26', 'Male', 'kit.h@gmail.com', '+1-555312345', 6),
('Emilia', 'Clarke', 'P412345', '1986-10-23', 'Female', 'emilia.c@hotmail.com', '+1-555412345', 7),
('Nikolaj', 'Coster-Waldau', 'P512345', '1970-07-27', 'Male', 'nikolaj.c@amazon.com', '+1-555512345', 7),
('Sean', 'Bean', 'P612345', '1959-04-17', 'Male', 'sean.b@gmail.com', '+1-555612345', 8),
('Lena', 'Headey', 'P712345', '1973-10-03', 'Female', 'lena.h@hotmail.com', '+1-555712345', 8),
('Sophie', 'Turner', 'P812345', '1996-02-21', 'Female', 'sophie.t@amazon.com', '+1-555812345', 9),
('Maisie', 'Williams', 'P912345', '1997-04-15', 'Female', 'maisie.w@gmail.com', '+1-555912345', 9),
('Mark', 'Addy', 'P1012345', '1964-01-14', 'Male', 'mark.a@hotmail.com', '+1-5551012345', 10),
('Rory', 'McCann', 'P1112345', '1969-04-24', 'Male', 'rory.m@amazon.com', '+1-5551112345', 10),
('Gwendoline', 'Christie', 'P1212345', '1978-10-28', 'Female', 'gwendoline.c@gmail.com', '+1-5551212345', 1),
('Alfie', 'Allen', 'P1312345', '1986-09-12', 'Male', 'alfie.a@hotmail.com', '+1-5551312345', 2),
('Isaac', 'Hempstead Wright', 'P1412345', '1999-04-09', 'Male', 'isaac.h@amazon.com', '+1-5551412345', 3),
('Jack', 'Gleeson', 'P1512345', '1992-05-20', 'Male', 'jack.g@gmail.com', '+1-5551512345', 4),
('Iain', 'Glen', 'P1612345', '1961-06-24', 'Male', 'iain.g@hotmail.com', '+1-5551612345', 5),
('Conleth', 'Hill', 'P1712345', '1964-11-24', 'Male', 'conleth.h@amazon.com', '+1-5551712345', 6),
('Carice', 'van Houten', 'P1812345', '1976-09-05', 'Female', 'carice.v@gmail.com', '+1-5551812345', 7),
('Hafþór', 'Júlíus Björnsson', 'P1912345', '1988-11-26', 'Male', 'hafthor.b@hotmail.com', '+1-5551912345', 8),
('Richard', 'Madden', 'P2012345', '1986-06-18', 'Male', 'richard.m@amazon.com', '+1-5552012345', 9);

INSERT INTO tourist_tour (tourist_id, tour_id) VALUES
(1,6),
(1,2),
(2,11),
(2,8),
(3,3),
(3,1);