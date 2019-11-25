DROP TABLE IF EXISTS Vehicle1;
CREATE TABLE Vehicle1
(
    vlicense VARCHAR(32) UNIQUE NOT NULL,
    vid INTEGER UNIQUE NOT NULL,
    make VARCHAR(32),
    yr INTEGER,
    model VARCHAR(32),
    color VARCHAR(32),
    odometer INTEGER,
    stat VARCHAR(32) NOT NULL,
    vtname VARCHAR(32) NOT NULL,
    loc VARCHAR(50),
    city VARCHAR(50),
    PRIMARY KEY(vid),
    FOREIGN KEY(vtname) REFERENCES vehicleType1,
    FOREIGN KEY(loc) REFERENCES Branch1
);

/*
enforce constraints on status
*/

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r1', 1111, 'Honda', 2011, 'Civic', 'red', 10100, 'for-rent', 'Economy', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r2', 1112, 'Honda', 2011, 'Civic', 'black', 10201, 'for-rent', 'Economy', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r3', 1113, 'Porsche', 2012, 'Turbo', 'silver', 20300, 'for-rent', 'Compact', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r4', 1114, 'Porsche', 2014, 'Turbo', 'black', 20301, 'for-rent', 'Compact', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r5', 1115, 'Honda', 2017, 'CR-V', 'black', 30051, 'for-rent', 'SUV', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r6', 1116, 'Honda', 2002, 'CR-V', 'blue', 40355, 'for-rent', 'SUV', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r7', 1117, 'Dodge', 2008, 'Ram', 'silver', 80251, 'for-rent', 'Truck', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r8', 1118, 'Porsche', 2007, 'Panamera', 'silver', 90150, 'for-rent', 'Full-size', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2r9', 1119, 'Toyota', 2016, 'Prius', 'silver', 40150, 'for-rent', 'Mid-size', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s1', 1120, 'Toyota', 2019, 'Prius', 'silver', 60170, 'for-rent', 'Mid-size', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s3', 1121, 'Honda', 2015, 'Accord', 'gold', 70350, 'for-rent', 'Standard', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s4', 1122, 'Honda', 2017, 'Accord', 'gold', 10450, 'for-rent', 'Standard', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s5', 1123, 'Acura', 2018, 'RSX', 'black', 30040, 'for-rent', 'SUV', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s6', 1124, 'Acura', 2019, 'RSX', 'red', 35140, 'for-rent', 'SUV', '11 Main Street', 'Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s7', 1125, 'Honda', 2002, 'Civic', 'red', 20140, 'for-rent', 'Economy', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s8', 1126, 'Honda', 2009, 'Civic', 'black', 12150, 'for-rent', 'Economy', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2s9', 1127, 'Porsche', 2003, 'Turbo', 'black', 20350, 'for-rent', 'Compact', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t1', 1128, 'Porsche', 2011, 'Turbo', 'blue', 00051, 'for-rent', 'Compact', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t2', 1129, 'Honda', 2018, 'CRV', 'blue', 40250, 'for-rent', 'SUV', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t3', 1130, 'Honda', 2019, 'CRV', 'red', 23250, 'for-rent', 'SUV', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t4', 1131, 'Dodge', 2012, 'Ram', 'red', 34200, 'for-rent', 'Truck', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t5', 1132, 'Dodge', 2014, 'Ram', 'silver', 23500, 'for-rent', 'Truck', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t6', 1133, 'Porsche', 2016, 'Panamera', 'silver', 40120, 'for-rent', 'Full-size', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t7', 1134, 'Porsche', 2017, 'Panamera', 'silver', 12220, 'for-rent', 'Full-size', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t8', 1135, 'Toyota', 2018, 'Prius', 'black', 42120, 'for-rent', 'Mid-size', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2t9', 1136, 'Toyota', 2014, 'Prius', 'black', 13150, 'for-rent', 'Mid-size', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u1', 1137, 'Honda', 2013, 'Accord', 'black', 12650, 'for-rent', 'Standard', '11 5th Street', 'Burnaby');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u2', 1138, 'Honda', 2012, 'Accord', 'black', 32650, 'for-rent', 'Standard', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u3', 1139, 'Honda', 2011, 'Civic', 'black', 13650, 'for-rent', 'Economy', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u4', 1140, 'Honda', 2012, 'Civic', 'red', 25750, 'for-rent', 'Economy', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u5', 1141, 'Dodge', 2011, 'Ram', 'red', 23650, 'for-rent', 'Truck', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u6', 1142, 'Dodge', 2010, 'Ram', 'silver', 24000, 'for-rent', 'Truck', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u7', 1143, 'Honda', 2013, 'CRV', 'silver', 33000, 'for-rent', 'SUV', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u8', 1144, 'Porsche', 2014, 'Turbo', 'silver', 43000, 'for-rent', 'Compact', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2u9', 1145, 'Porsche', 2015, 'Turbo', 'black', 43300, 'for-rent', 'Compact', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2v1', 1146, 'Porsche', 2016, 'Panamera', 'black', 13300, 'for-rent', 'Full-size', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2v2', 1147, 'Toyota', 2017, 'Prius', 'black', 23300, 'for-rent', 'Mid-size', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2v3', 1148, 'Honda', 2011, 'Accord', 'gold', 22300, 'for-rent', 'Standard', '11 Water Street', 'North Vancouver');

INSERT INTO Vehicle1
    (vlicense, vid, make, yr, model, color, odometer, stat, vtname, loc, city)
VALUES
    ('1x1 2v4', 1149, 'Honda', 2020, 'Accord', 'black', 11300, 'for-rent', 'Standard', '11 Water Street', 'North Vancouver');
