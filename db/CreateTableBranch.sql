DROP TABLE IF EXISTS Branch1;
CREATE TABLE Branch1
(
    loc VARCHAR(50),
    city VARCHAR(50),
    PRIMARY KEY (loc)
);

INSERT INTO Branch1
    (loc, city)
VALUES
    ('11 Main Street', 'Vancouver');

INSERT INTO Branch1
    (loc, city)
VALUES
    ('11 5th Street', 'Burnaby');

INSERT INTO Branch1
    (loc, city)
VALUES
    ('11 Water Street', 'North Vancouver');


