CREATE SCHEMA PERSONS;

CREATE TABLE PERSONS.PERSONS (
                                 name           VARCHAR(50),
                                 surname        VARCHAR(50),
                                 age            SMALLINT CHECK (age >= 0 AND age <= 200),
                                 phone_number   VARCHAR(30),
                                 city_of_living VARCHAR(50),
                                 PRIMARY KEY (name, surname, age)
);

INSERT INTO PERSONS.PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Denis', 'Bykov', 34, '+79996960805', 'Simferopol'),
       ('Nikita', 'Morozov', 45, '+79785347740', 'moscow'),
       ('Nikolay', 'Teterew', 33, '+79785345740', 'Rostov-on-Don'),
       ('Galina', 'Lazarewa', 24, '+79834224455', 'Moscow'),
       ('Nikonor', 'Babaew', 82, null, 'MOSCOW'),
       ('Elizaweta', 'Ivanowa', 29, '+7983964467', 'MoScOW');