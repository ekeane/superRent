DROP TABLE IF EXISTS Returns1;
CREATE TABLE Returns1
(
    rid INTEGER UNIQUE NOT NULL,
    returnDate DATE NOT NULL,
    returnTime TIME NOT NULL,
    odometer INTEGER,
    fulltank CHAR(1),
    cost FLOAT,
    FOREIGN KEY(rid) REFERENCES Rentals1
);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (00, '2019-04-10', '12:00:00', 10100, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (01, '2019-04-16', '14:00:00', 10201, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (02, '2019-05-16', '14:00:00', 20300, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (03, '2019-06-16', '14:00:00', 20301, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (04, '2019-04-09', '18:00:00', 30051, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (05, '2019-05-01', '13:00:00', 40355, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (06, '2019-04-16', '13:00:00', 80251, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (07, '2019-04-16', '14:00:00', 90150, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (08, '2019-04-18', '16:00:00', 40150, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (09, '2019-05-18', '14:00:00', 60170, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (10, '2019-04-18', '14:00:00', 70350, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (11, '2019-05-18', '14:00:00', 10450, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (12, '2019-05-18', '14:00:00', 30040, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (13, '2019-05-29', '14:00:00', 35140, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (14, '2019-05-28', '14:30:00', 20140, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (15, '2019-05-28', '14:30:00', 12150, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (16, '2019-05-28', '14:30:00', 20350, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (17, '2019-05-28', '14:30:00', 00051, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (18, '2019-05-29', '14:30:00', 40250, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (19, '2019-06-29', '14:30:00', 23250, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (20, '2019-06-29', '14:30:00', 34200, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (21, '2019-06-29', '14:30:00', 23500, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (22, '2019-06-03', '16:30:00', 40120, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (23, '2019-06-08', '16:30:00', 12220, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (24, '2019-06-08', '16:30:00', 42120, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (25, '2019-06-10', '16:00:00', 13150, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (26, '2019-06-10', '16:00:00', 12650, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (27, '2019-06-10', '16:00:00', 32650, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (28, '2019-07-10', '16:00:00', 13650, 'Y', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (29, '2019-07-10', '15:00:00', 25750, 'N', NULL);

INSERT INTO Returns1
    (rid, returnDate, returnTime, odometer, fulltank, cost)
VALUES
    (30, '2019-07-10', '15:00:00', 23650, 'N', NULL);