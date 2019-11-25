DROP TABLE IF EXISTS Rentals1;
CREATE TABLE Rentals1
(
    rid INTEGER UNIQUE NOT NULL,
    vid INTEGER UNIQUE NOT NULL,
    cellphone VARCHAR(32) NOT NULL,
    fromDate DATE NOT NULL,
    fromTime TIME NOT NULL,
    toDate DATE NOT NULL,
    toTime TIME NOT NULL,
    odometer INTEGER,
    cardName VARCHAR(32) NOT NULL,
    cardNo INTEGER NOT NULL,
    ExpDate DATE NOT NULL,
    confNo INTEGER,
    PRIMARY KEY(rid),
    FOREIGN KEY(vid) REFERENCES Vehicle1,
    FOREIGN KEY(cellphone) REFERENCES Customers1,
    FOREIGN KEY(confNo) REFERENCES Reservations1
);

/*
rid = xx
vid = xxxx
cardnum = xxxxxx
exp date: '2020-04-10'
*/

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (00, 1111, '1(250)-328-9909', '2019-04-09', '10:00:00', '2019-04-10', '12:00:00', 10000, 'Braden Holm', 111222, '2020-04-10', 111);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (01, 1112, '1(250)-328-9901', '2019-04-09', '11:00:00', '2019-04-16', '14:00:00', 10001, 'Kirtan', 111223, '2020-04-10', 112);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (02, 1113, '1(778)-320-8888', '2019-04-09', '12:30:00', '2019-05-16', '14:00:00', 20000, 'Eamon', 111224, '2020-04-10', 113);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (03, 1114, '1(778)-420-9988', '2019-06-09', '12:30:00', '2019-06-16', '14:00:00', 20001, 'Patrick', 111225, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (04, 1115, '1(778)-328-9009', '2019-04-09', '09:30:00', '2019-04-09', '18:00:00', 30000, 'Liam', 111226, '2020-04-10', 114);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (05, 1116, '1(778)-328-1009', '2019-04-10', '09:30:00', '2019-05-01', '13:00:00', 40005, 'Sheryl', 111227, '2020-04-10', 115);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (06, 1117, '1(778)-990-2009', '2019-04-10', '09:30:00', '2019-04-16', '13:00:00', 80001, 'Lilly', 111228, '2020-04-10', 116);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (07, 1118, '1(328)-444-2119', '2019-04-10', '10:30:00', '2019-04-16', '14:00:00', 90000, 'Micheal', 111229, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (08, 1119, '1(778)-999-2109', '2019-04-10', '09:30:00', '2019-04-18', '16:00:00', 40000, 'Brandon', 111230, '2020-04-10', 136);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (09, 1120, '1(306)-230-4109', '2019-05-10', '09:30:00', '2019-05-18', '14:00:00', 60000, 'Shelly', 111231, '2020-04-10', 117);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (10, 1121, '1(306)-430-4109', '2019-04-11', '10:30:00', '2019-04-18', '14:00:00', 70000, 'Ashley', 111232, '2020-04-10', 118);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (11, 1122, '1(306)-430-4109', '2019-04-18', '11:30:00', '2019-05-18', '14:00:00', 10000, 'Ashley', 111232, '2020-04-10', 119);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (12, 1123, '1(778)-434-4109', '2019-05-18', '09:30:00', '2019-05-18', '14:00:00', 30000, 'Bob', 111233, '2020-04-10', 139);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (13, 1124, '1(778)-200-3109', '2019-05-18', '09:30:00', '2019-05-29', '14:30:00', 35000, 'Allen', 111234, '2020-04-10', 120);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (14, 1125, '1(778)-200-1234', '2019-05-18', '09:30:00', '2019-05-28', '14:30:00', 20000, 'Fred', 111235, '2020-04-10', 121);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (15, 1126, '1(778)-569-2234', '2019-05-19', '13:30:00', '2019-05-28', '14:30:00', 12000, 'Carey Price', 111236, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (16, 1127, '1(778)-210-1235', '2019-05-20', '09:30:00', '2019-05-28', '14:30:00', 20000, 'Alex O', 111237, '2020-04-10', 122);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (17, 1128, '1(778)-210-1235', '2019-05-22', '10:30:00', '2019-05-28', '14:30:00', 00001, 'Alex O', 111237, '2020-04-10', 123);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (18, 1129, '1(250)-210-2235', '2019-05-22', '10:30:00', '2019-05-29', '14:30:00', 40001, 'Thomas Shelby', 111238, '2020-04-10', 124);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (19, 1130, '1(250)-328-1235', '2019-06-01', '11:30:00', '2019-06-29', '14:30:00', 23000, 'Bryce', 111239, '2020-04-10', 125);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (20, 1131, '1(250)-328-9090', '2019-06-05', '11:30:00', '2019-06-29', '14:30:00', 34000, 'Aleks', 111240, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (21, 1132, '1(250)-328-1238', '2019-06-01', '11:30:00', '2019-06-29', '14:30:00', 23000, 'Max Domi', 111241, '2020-04-10', 126);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (22, 1133, '1(778)-286-2236', '2019-06-02', '11:30:00', '2019-06-03', '16:30:00', 40000, 'Breadon', 111242, '2020-04-10', 127);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (23, 1134, '1(778)-286-2236', '2019-06-02', '12:30:00', '2019-06-08', '16:30:00', 12000, 'Breadon', 111242, '2020-04-10', 128);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (24, 1135, '1(306)-800-4536', '2019-06-03', '12:30:00', '2019-06-08', '16:30:00', 42000, 'Santa C', 111243, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (25, 1136, '1(778)-300-8236', '2019-06-02', '12:30:00', '2019-06-10', '16:00:00', 13000, 'Dr Phil', 111244, '2020-04-10', 129);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (26, 1137, '1(778)-301-8436', '2019-06-02', '12:30:00', '2019-06-10', '16:00:00', 12500, 'Raymond', 111245, '2020-04-10', 130);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (27, 1138, '1(778)-401-9436', '2019-06-02', '13:30:00', '2019-06-10', '16:00:00', 32000, 'Ashley L', 111246, '2020-04-10', 131);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (28, 1139, '1(778)-402-9537', '2019-07-02', '13:30:00', '2019-07-10', '16:00:00', 13400, 'Matt', 111247, '2020-04-10', 132);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (29, 1140, '1(778)-402-9537', '2019-07-03', '13:30:00', '2019-07-10', '15:00:00', 25000, 'Matt', 111247, '2020-04-10', 133);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (30, 1141, '1(778)-555-5535', '2019-07-03', '14:30:00', '2019-07-10', '15:00:00', 23500, 'Megan', 111248, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (31, 1142, '1(778)-555-5535', '2019-09-03', '14:30:00', '2019-12-10', '15:00:00', 24000, 'Megan', 111248, '2020-04-10', null);

INSERT INTO Rentals1
    (rid, vid, cellphone, fromDate, fromTime, toDate, toTime, odometer, cardName, cardNo, ExpDate, confNo)
VALUES
    (32, 1143, '1(778)-454-5435', '2019-09-03', '14:30:00', '2019-12-10', '15:00:00', 33000, 'Morgan', 111248, '2020-04-10', null);








    




    


       



    



