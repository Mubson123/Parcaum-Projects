create table student(
    id bigint AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL,
    firstname VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    faculty VARCHAR(250) NOT NULL,
    semester INT NOT NULL,
    certificate VARCHAR(250) NOT NULL,
    university VARCHAR(250) NOT NULL,
    PRIMARY KEY(id));

INSERT INTO student(id, name, firstname, email, faculty, semester, certificate, university) VALUES (
6,'Mube Teubo', 'Cedric Martial', 'cedric.mube@fau.de','Mechatronic',9, 'B.Sc.', 'FAU Er-Nu');
INSERT INTO student(id, name, firstname, email, faculty, semester, certificate, university) VALUES (
2,'Awoukeng Wankam','Eddy Terence','terence.awoukeng@fau.de','Electrotechnic',6,'B.Sc.','FAU ER-Nu');
INSERT INTO student(id, name, firstname, email, faculty, semester, certificate, university) VALUES (
3,'Boum','Mylene Marc','mylene.boum@fau.de','Mechatronic',3,'M.Sc.','FAU ER-Nu');
INSERT INTO student(id, name, firstname, email, faculty, semester, certificate, university) VALUES (
4,'Ngankam','Freddy','freddy.ngankam@thn.de','Electrotechnic',2,'M.Sc.','TH-Nu');
INSERT INTO student(id, name, firstname, email, faculty, semester, certificate, university) VALUES (
5,'Kenfack Bouzang','Sabine Sagesse','sabine.kenfack@thb.de','Psychology',3,'M.Sc.','TH-Bayreuth');
