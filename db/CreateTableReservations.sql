DROP TABLE IF EXISTS Reservations1;
CREATE TABLE Reservations1
(
    confNo INTEGER UNIQUE NOT NULL,
    vtname VARCHAR(32),
    cellphone VARCHAR(32) NOT NULL,
    fromDate DATE NOT NULL,
    fromTime TIME NOT NULL,
    toDate DATE NOT NULL,
    toTime TIME NOT NULL,
    PRIMARY KEY(confNo),
    FOREIGN KEY(vtname) REFERENCES VehicleType1(vtname),
    FOREIGN KEY(cellphone) REFERENCES Customers1(cellphone),
);

/*
MAY HAVE TO DO ON DELETE CASCADE FOR SOME OF THESE TUPLES
Al 
*/

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (111, 'Standard', '1(250)-328-9909', '2019-04-09', '10:00:00', '2019-04-10', '12:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (112, 'Full-size', '1(250)-440-9901', '2019-04-09', '11:00:00', '2019-04-16', '14:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (113, 'Economy', '1(778)-320-8888', '2019-04-09', '12:30:00', '2019-05-16', '14:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (114, 'Truck', '1(778)-328-9009', '2019-04-09', '09:30:00', '2019-04-09', '18:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (115, 'Mid-size', '1(778)-328-1009', '2019-04-10', '09:30:00', '2019-05-01', '13:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (116, 'SUV', '1(778)-990-2009', '2019-04-10', '09:30:00', '2019-04-16', '13:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (136, 'SUV', '1(778)-999-2109', '2019-04-10', '09:30:00', '2019-04-18', '16:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (117, 'Truck', '1(306)-230-4109', '2019-05-10', '09:30:00', '2019-05-18', '14:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (118, 'Compact', '1(306)-430-4109', '2019-04-11', '10:30:00', '2019-04-18', '14:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (119, 'Economy', '1(306)-430-4109', '2019-04-18', '11:30:00', '2019-05-18', '14:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (139, 'Standard', '1(778)-434-4109', '2019-05-18', '09:30:00', '2019-05-18', '14:00:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (120, 'SUV', '1(778)-200-3109', '2019-05-18', '09:30:00', '2019-05-29', '14:30:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (121, 'Mid-size', '1(778)-200-1234', '2019-05-18', '09:30:00', '2019-05-28', '14:30:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (122, 'Mid-size', '1(778)-210-1235', '2019-05-20', '09:30:00', '2019-05-28', '14:30:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (123, 'Truck', '1(778)-210-1235', '2019-05-22', '10:30:00', '2019-05-28', '14:30:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (124, 'Full-size', '1(250)-210-2235', '2019-05-22', '10:30:00', '2019-05-29', '14:30:00');

INSERT INTO Reservations1
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (125, 'Economy', '1(250)-328-1235', '2019-06-01', '11:30:00', '2019-06-29', '14:30:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (126, 'SUV', '1(250)-328-1238', '2019-06-01', '11:30:00', '2019-06-29', '14:30:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (127, 'Economy', '1(778)-286-2236', '2019-06-02', '11:30:00', '2019-06-03', '16:30:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (128, 'Mid-size', '1(778)-286-2236', '2019-06-02', '12:30:00', '2019-06-08', '16:30:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (129, 'Full-size', '1(778)-300-8236', '2019-06-02', '12:30:00', '2019-06-10', '16:00:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (130, 'Compact', '1(778)-301-8436', '2019-06-02', '13:30:00', '2019-06-10', '16:00:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (131, 'Truck', '1(778)-401-9436', '2019-06-02', '13:30:00', '2019-06-10', '16:00:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (132, 'Economy', '1(778)-402-9537', '2019-07-02', '13:30:00', '2019-07-10', '16:00:00');

INSERT INTO Reservations1 
    (confNo, vtname, cellphone, fromDate, fromTime, toDate, toTime)
VALUES
    (133, 'SUV', '1(778)-302-9537', '2019-07-03', '13:30:00', '2019-07-10', '15:00:00');



























