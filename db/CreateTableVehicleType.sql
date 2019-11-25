DROP TABLE IF EXISTS VehicleType1;
CREATE TABLE VehicleType1
(
    vtname VARCHAR(32) NOT NULL,
    features VARCHAR(32),
    wrate FLOAT,
    drate FLOAT,
    hrate FLOAT,
    wirate FLOAT,
    dirate FLOAT,
    hirate FLOAT,
    krate FLOAT,
    PRIMARY KEY (vtname)
);
/*
krate is supposed to charge only after a fixed amount of 
kms driven but I dont know if I need to add that to the
logic here
*/
INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('Economy', 'Power Windows', 700, 10, 100, 50, 5, 1, 0.1);

INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('Compact', 'AC', 800, 12, 120, 70, 6, 1, 0.1);

INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('Mid-size', 'Heated Seats', 900, 15, 150, 100, 7, 1, 0.1);

INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('Standard', 'Turbo', 1000, 17, 175, 100, 8, 2, 0.15);

INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('Full-size', 'Leather Seats', 1100, 20, 180, 100, 8, 2, 0.2);

INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('SUV', '20inch Rims', 1200, 25, 190, 100, 8, 2, 0.25);

INSERT INTO VehicleType1
    (vtname, features, wrate, hrate, drate,
    wirate, dirate, hirate, krate)
VALUES
    ('Truck', 'Extended Cab', 1300, 30, 200, 120, 10, 3, 0.30);