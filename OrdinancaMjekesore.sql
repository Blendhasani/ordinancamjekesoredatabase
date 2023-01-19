CREATE DATABASE OrdinancaMjekesore
USE OrdinancaMjekesore

CREATE TABLE Pacienti(

[ID_Pacientit] int PRIMARY KEY NOT NULL,	
[Emri] varchar (20) NOT NULL,
[Mbiemri] varchar (20) NOT NULL,
[Ditelindja] date,
[Mosha] int,
[Nr_Tel] varchar(20),
[Pesha] int NOT NULL,
[Qyteti] varchar (20),
[Shteti] varchar (20)
);



INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('1','Besa','Gashi','7/20/1998','23','+383 49 565 126','65','Prishtine','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('2','Yll','Krasniqi','12/31/2000','21','+383 49 155 452','78','Peje','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('3','Hana','Qorkadiu','2/28/2008','13','+383 45 661 944','52','Prishtine','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('4','Ismajl','Shala','10/18/1963','58','+383 44 573 864','85','Peje','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('5','Shkelzen','Doli','8/20/1983','38','+383 49 648 564','75','Peje','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('6','Ylber','Krasniqi','1/06/1980','42','+383 49 545 781','82','Peje','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('7','Klea','Syla','7/10/2010','11','+383 49 412 941','40','Peje','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('8','Naim','Husaj','11/11/1974','47','+383 44 255 256','87','Peje','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('9','Shemsedin','Prapashtica','6/1/1965','56','+383 45 545 151','76','Prishtine','Kosove')
INSERT INTO Pacienti ([ID_Pacientit],[Emri],[Mbiemri],[Ditelindja],[Mosha],[Nr_Tel],[Pesha],[Qyteti],[Shteti]) VALUES ('10','Dua','Kelmendi','6/27/2006','15','+383 49 542 985','49','Peje','Kosove')






CREATE TABLE Ordinanca (

[ID_Ordinances] int PRIMARY KEY NOT NULL,
[Emri] varchar (20) NOT NULL,
[Orari] varchar (30),
[Sende Shtese] varchar(30),
[Arka Fiskale] varchar(50),
[Email] nvarchar(320),
[Shteti] varchar(20),
[Qyteti] varchar(20),
[Rruga] varchar(20),
[Nr_Objektit] int,
[Zip Kodi] varchar(20),


);



INSERT INTO Ordinanca ([ID_Ordinances],[Emri],[Orari],[Sende Shtese],[Arka Fiskale],[Email],[Shteti],[Qyteti],[Rruga],[Nr_Objektit],[Zip Kodi]) 
VALUES('1','Pulmo Ultra med','E Hene - E Premte','Vizitkarta,Peshore,Maska','BC-451','pulmoultramed@yahoo.com','Kosove','Peje','Nena Tereze','24','30000')


CREATE TABLE Mjeku(

[ID_Mjekut] int PRIMARY KEY NOT NULL,
[Emri] varchar (20) NOT NULL,
[Mbiemri] varchar (20) NOT NULL,
[Nr_Tel] varchar(20),
[Diploma] varchar(100) ,
[Licensa] varchar(30) UNIQUE,


);



INSERT INTO Mjeku([ID_Mjekut],[Emri],[Mbiemri],[Nr_Tel],[Diploma],[Licensa]) 
VALUES ('1','Fahri','Hasani','+383 049 451 154','Fakulteti i pergjithshem i mjeksise -  Pulmologji','Prishtine - 2020')



CREATE TABLE Termini(
[Termini_ID] int PRIMARY KEY NOT NULL,
[ID_Pacientit] int,
FOREIGN KEY (ID_Pacientit) REFERENCES Pacienti (ID_Pacientit) , 
[ID_Ordinances] int
FOREIGN KEY (ID_Ordinances) REFERENCES Ordinanca (ID_Ordinances) ,
[Data] date,
[Ora] varchar (15),
);




INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('1','1','1','1/9/2022','15:10')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('2','2','1','1/9/2022','15:25')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('3','3','1','1/9/2022','15:40')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('4','4','1','1/9/2022','15:55')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('5','5','1','1/9/2022','16:10')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('6','6','1','1/9/2022','16:45')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('7','7','1','1/9/2022','17:00')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('8','8','1','1/9/2022','17:15')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('9','9','1','1/9/2022','17:30')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('10','10','1','1/9/2022','17:45')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('11','1','1','4/9/2022','15:30')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('12','2','1','4/9/2022','15:45')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('13','3','1','4/9/2022','16:00')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('14','4','1','4/9/2022','16:15')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('15','5','1','4/9/2022','16:30')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('16','6','1','4/9/2022','17:00')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('17','7','1','4/9/2022','17:15')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('18','8','1','4/9/2022','17:30')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('19','9','1','4/9/2022','17:45')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('20','10','1','4/9/2022','18:00')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('21','1','1','4/16/2022','15:00')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('22','2','1','4/16/2022','15:15')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('23','3','1','4/16/2022','15:30')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('24','4','1','4/16/2022','15:45')
INSERT INTO Termini([Termini_ID],[ID_Pacientit],[ID_Ordinances],[Data],[Ora])VALUES('25','5','1','4/16/2022','16:00')







CREATE TABLE Kompania(
[Kompania_ID] int PRIMARY KEY NOT NULL,
[ID_Ordinances] int,
FOREIGN KEY (ID_Ordinances) REFERENCES Ordinanca (ID_Ordinances),
[ID_Mjekut] int,
FOREIGN KEY (ID_Mjekut) REFERENCES Mjeku (ID_Mjekut) , 
);



INSERT INTO Kompania([Kompania_ID],[ID_Ordinances],[ID_Mjekut]) VALUES ('1','1','1')

CREATE TABLE Sherbimet(
[Sherbimet_ID] int PRIMARY KEY NOT NULL,
[ID_Pacientit] int,
FOREIGN KEY (ID_Pacientit) REFERENCES Pacienti (ID_Pacientit) , 
[Kompania_ID] int,
FOREIGN KEY (Kompania_ID) REFERENCES Kompania (Kompania_ID),
[Spirometri] varchar(10),
[Keshilla Mjekesore] varchar (10),
[Infuzion] varchar (10),
[Injeksion] varchar(10),
[Pleuricenteza] varchar(10),
[EKG] varchar (10),
[Termini_ID] int,
FOREIGN KEY (Termini_ID) REFERENCES Termini (Termini_ID),

);


INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('1','1','1','Po','Po','Jo','Jo','Jo','Jo','1')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('2','2','1','Jo','Po','Jo','Po','Jo','Po','2')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('3','3','1','Po','Jo','Jo','Po','Po','Jo','3')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('4','4','1','Po','Po','Jo','Jo','Jo','Jo','4')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('5','5','1','Jo','Po','Jo','Po','Jo','Po','5')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('6','6','1','Po','Jo','Jo','Po','Po','Jo','6')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('7','7','1','Jo','Jo','Jo','Po','Jo','Po','7')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('8','8','1','Po','Po','Jo','Jo','Jo','Po','8')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('9','9','1','Jo','Jo','Jo','Po','Jo','Jo','9')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('10','10','1','Jo','Po','Po','Jo','Jo','Jo','10')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('11','1','1','Jo','Po','Jo','Jo','Jo','Jo','11')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('12','2','1','Po','Jo','Jo','Jo','Jo','Jo','12')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('13','3','1','Po','Po','Po','Jo','Jo','Jo','13')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('14','4','1','Po','Po','Jo','Jo','Po','Jo','14')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('15','5','1','Jo','Jo','Jo','Jo','Jo','Po','15')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('16','6','1','Jo','Po','Jo','Jo','Jo','Po','16')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('17','7','1','Jo','Jo','Jo','Po','Po','Po','17')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('18','8','1','Po','Jo','Jo','Po','Po','Jo','18')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('19','9','1','Po','Po','Po','Jo','Po','Jo','19')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('20','10','1','Jo','Po','Jo','Jo','Jo','Jo','20')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('21','1','1','Jo','Po','Jo','Jo','Jo','Jo','21')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('22','2','1','Po','Jo','Jo','Jo','Jo','Jo','22')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('23','3','1','Po','Po','Jo','Jo','Jo','Jo','23')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('24','4','1','Po','Jo','Jo','Jo','Jo','Po','24')
INSERT INTO Sherbimet([Sherbimet_ID],[ID_Pacientit],[Kompania_ID],[Spirometri],[Keshilla Mjekesore],[Infuzion],[Injeksion],[Pleuricenteza],[EKG],[Termini_ID])
VALUES('25','5','1','Po','Po','Jo','Jo','Jo','Po','25')






CREATE TABLE Detyrimi(

[Detyrimi_ID] int PRIMARY KEY NOT NULL,
[ID_Pacientit] int,
FOREIGN KEY (ID_Pacientit) REFERENCES PACIENTI (ID_Pacientit),
[Sherbimet_ID] int,
FOREIGN KEY (Sherbimet_ID) REFERENCES Sherbimet (Sherbimet_ID),
[Shuma] int ,
[Data] date,
[Cash] varchar(10),
[Credit cart] varchar(10),

);





INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('1','1','1','20','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('2','2','2','20','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('3','3','3','10','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('4','4','4','35','1/9/2022','Jo','Po')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('5','5','5','15','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('6','6','6','10','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('7','7','7','20','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('8','8','8','20','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('9','9','9','40','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('10','10','10','25','1/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('11','1','11','15','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('12','2','12','5','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('13','3','13','50','4/9/2022','Jo','Po')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('14','4','14','10','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('15','5','15','20','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('16','6','16','30','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('17','7','17','20','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('18','8','18','20','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('19','9','19','40','4/9/2022','Jo','Po')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('20','10','20','25','4/9/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('21','1','21','35','4/16/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('22','2','22','40','4/16/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('23','3','23','20','4/16/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('24','4','24','10','4/16/2022','Po','Jo')
INSERT INTO Detyrimi([Detyrimi_ID],[ID_Pacientit],[Sherbimet_ID],[Shuma],[Data],[Cash],[Credit cart]) VALUES ('25','5','25','10','4/16/2022','Po','Jo')


UPDATE Detyrimi
SET [Shuma] = '30'
WHERE [Detyrimi_ID]='1'

UPDATE Detyrimi
SET [Shuma] = '10' , [Data] = '1/10/2022' , [Cash]='Jo', [Credit cart]='Po'
WHERE [Detyrimi_ID]='2'

UPDATE Detyrimi
SET [Shuma] = '40' ,[Cash]='Jo', [Credit cart]='Po'
WHERE [Detyrimi_ID]='3'

UPDATE Detyrimi
SET [Data]='1/11/2022'
WHERE [Detyrimi_ID]='4'

UPDATE Detyrimi
SET [Shuma] = '50'
WHERE [Detyrimi_ID]='5'

UPDATE Detyrimi
SET [Shuma] = '15' ,  [Data] = '1/10/2022'
WHERE [Detyrimi_ID]='6'

UPDATE Detyrimi
SET [Cash]='Jo' , [Credit cart]='Po'
WHERE [Detyrimi_ID]='7'

UPDATE Detyrimi
SET [Shuma] = '100',[Data] = '1/10/2022',[Cash]='Jo', [Credit cart]='Po'
WHERE [Detyrimi_ID]='8'

UPDATE Detyrimi
SET [Data]='1/12/2022' , [Cash]='Jo',[Credit cart]='Po'
WHERE [Detyrimi_ID] = '9'

UPDATE Detyrimi
SET [Cash]='Jo' , [Credit cart]='Po'
WHERE [Detyrimi_ID]='10'

DELETE Detyrimi
WHERE [Detyrimi_ID]='20'

DELETE Detyrimi
WHERE [Detyrimi_ID]='21'

DELETE Detyrimi
WHERE [Detyrimi_ID]='22'

DELETE Detyrimi
WHERE [Detyrimi_ID]='23'

DELETE Detyrimi
WHERE [Detyrimi_ID]='24'






CREATE TABLE Terapia(
[Terapia_ID] int PRIMARY KEY NOT NULL,
[ID_Pacientit] int,
FOREIGN KEY (ID_Pacientit) REFERENCES Pacienti (ID_Pacientit),
[ID_Mjekut] int,
FOREIGN KEY (ID_Mjekut) REFERENCES Mjeku (ID_Mjekut),
[Pershkrimi] varchar (200),

[Sherbimet_ID] int,
FOREIGN KEY (Sherbimet_ID) REFERENCES Sherbimet (Sherbimet_ID),

); 


SELECT * FROM Terapia


INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('1','1','1','Dg.Asthma Bronchiale-Th.Dischaler','1')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('2','2','1',' Tbc pulmonum-Th.Tabl H/R,Z,E','2')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('3','3','1','Dg.Pneumonia-Th.Amp.Ceftriaxone','3')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('4','4','1','Dg.Sarcoidosis-Th.Cutasan','4')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('5','5','1','Dg.Carcinoma pulmonum-Th.Kemioterapia','5')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('6','6','1','Hypertension arterialis-Th.Tabl Lizionopril','6')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('7','7','1','Hiperlipidemia-Th.Atorvastatin','7')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('8','8','1','Diabetes Mellitus-Th.Insulin Mixtard','8')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('9','9','1','Dg.Pneumonia-Th.Amp.Ceftriaxone','9')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('10','10','1','Dg.Sarcoidosis-Th.Cutasan','10')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('11','1','1','Dg.Carcinoma pulmonum-Th.Kemioterapia','11')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('12','2','1','Hypertension arterialis-Th.Tabl Lizionopril','12')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('13','3','1','Dg.Sarcoidosis-Th.Cutasan','13')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('14','4','1','Dg.Pneumonia-Th.Amp.Ceftriaxone','14')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('15','5','1','Diabetes Mellitus-Th.Insulin Mixtard','15')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('16','6','1','Diabetes Mellitus-Th.Insulin Mixtard','16')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('17','7','1','Hypertension arterialis-Th.Tabl Lizionopril','17')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('18','8','1','Dg.Sarcoidosis-Th.Cutasan','18')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('19','9','1','Hiperlipidemia-Th.Atorvastatin','19')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('20','10','1','Hypertension arterialis-Th.Tabl Lizionopril','20')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('21','1','1','Dg.Pneumonia-Th.Amp.Ceftriaxone','21')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('22','2','1','Hypertension arterialis-Th.Tabl Lizionopril','22')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('23','3','1','Dg.Pneumonia-Th.Amp.Ceftriaxone','23')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('24','4','1','Dg.Pneumonia-Th.Amp.Ceftriaxone','24')
INSERT INTO Terapia([Terapia_ID],[ID_Pacientit],[ID_Mjekut],[Pershkrimi],[Sherbimet_ID]) VALUES ('25','5','1','Dg.Carcinoma pulmonum-Th.Kemioterapia','25')



UPDATE Terapia
SET [Pershkrimi] = 'Tbc pulmonum-Th.Tabl H/R,Z,E'
WHERE [Terapia_ID]='1'

UPDATE Terapia
SET [Pershkrimi] = 'Dg.Carcinoma pulmonum-Th.Kemioterapia'
WHERE [Terapia_ID]='2'

UPDATE Terapia
SET [Pershkrimi] = 'Dg.Sarcoidosis-Th.Cutasan'
WHERE [Terapia_ID]='3'

UPDATE Terapia
SET [Pershkrimi] = 'Dg.Carcinoma pulmonum-Th.Kemioterapia'
WHERE [Terapia_ID]='4'

UPDATE Terapia
SET [Pershkrimi] = 'Hypertension arterialis-Th.Tabl Lizionopril'
WHERE [Terapia_ID]='5'

UPDATE Terapia
SET [Pershkrimi] = 'Hiperlipidemia-Th.Atorvastatin'
WHERE [Terapia_ID]='6'

UPDATE Terapia
SET [Pershkrimi] = 'Diabetes Mellitus-Th.Insulin Mixtard'
WHERE [Terapia_ID]='7'

UPDATE Terapia
SET [Pershkrimi] = 'Dg.Pneumonia-Th.Amp.Ceftriaxone'
WHERE [Terapia_ID]='8'

UPDATE Terapia
SET [Pershkrimi] = 'Dg.Sarcoidosis-Th.Cutasan'
WHERE [Terapia_ID]='9'

UPDATE Terapia
SET [Pershkrimi] = 'Dg.Pneumonia-Th.Amp.Ceftriaxone'
WHERE [Terapia_ID]='10'

--keto 5 delete ne vijim jane vetem te shkruara dhe jo te ekzekutuara
DELETE Terapia
WHERE [Terapia_ID]='15'

DELETE Terapia
WHERE [Pershkrimi]='Dg.Pneumonia-Th.Amp.Ceftriaxone'

DELETE Terapia
WHERE [ID_Pacientit]='6'

DELETE Terapia
WHERE [Terapia_ID]='17'

DELETE Terapia
WHERE [Terapia_ID]='Dg.Carcinoma pulmonum-Th.Kemioterapia'











CREATE TABLE Femija(
[ID_Femija] int PRIMARY KEY NOT NULL,
[ID_Mjekut] int,
FOREIGN KEY (ID_Mjekut) REFERENCES Mjeku (ID_Mjekut),
[Emri] varchar (20),
[Datelindja] date,
);

INSERT INTO Femija([ID_Femija],[Emri],[Datelindja]) VALUES ('1','Hana','7/10/2008')


--8 QUERIES TE THJESHTA


--1) Pacientet mbi 18 vjec
SELECT  p.Emri , p.Mbiemri,p.Mosha AS [Pacientet mbi 18 vjeç]
FROM Pacienti p
WHERE p.Mosha > 18
GROUP BY p.Emri,p.Mbiemri,p.Mosha 
ORDER BY p.Mosha ASC


--2) Pacientet nga qyteti i pejes

SELECT p.ID_Pacientit,p.Emri,p.Mbiemri,p.Qyteti
FROM Pacienti p
WHERE p.Qyteti = 'Peje'
GROUP BY p.ID_Pacientit,p.Emri,p.Mbiemri,p.Qyteti

SELECT  COUNT(p.Qyteti) AS "Totali i pacienteve nga Peja"
FROM Pacienti p
WHERE p.Qyteti = 'Peje'


--3) Numri i termineve ne daten e caktuar

SELECT t.Data ,COUNT(t.Data) AS 'Numri i termineve per daten e caktuar'
FROM Termini t
WHERE t.Data = '4/9/2022'
GROUP BY t.Data

--4)Numri i pacientave qe kane marr infuzion ne ordinance

SELECT COUNT(s.Infuzion) AS "Totali Infuzioneve"
FROM Sherbimet s
WHERE s.Infuzion = 'Po'

--5)Pacientet qe kane paguar me credit cart

SELECT COUNT(d.[Credit cart]) AS "CC Payers"
FROM Detyrimi d
WHERE d.[Credit cart] = 'Po'

--6) ID-te e pacienteve qe kane marre keshilla mjekesore dhe kane bere spirometri

SELECT s.ID_Pacientit,s.[Keshilla Mjekesore],s.Spirometri,s.Termini_ID
FROM Sherbimet s
WHERE s.[Keshilla Mjekesore] = 'Po' AND s.Spirometri = 'Po'
ORDER BY s.ID_Pacientit ASC



--7)ID-te e pacienteve te cilet nuk kane marre fare terapi
SELECT t.ID_Pacientit,t.Pershkrimi
FROM Terapia t
WHERE t.Pershkrimi IS NULL
GROUP BY t.ID_Pacientit,t.Pershkrimi





--8)ID-te e pacienteve qe kane marre se paku nje nga keto terapi te caktuara
SELECT t.ID_Pacientit,t.Pershkrimi
FROM Terapia t
WHERE t.Pershkrimi IN ('Tbc pulmonum-Th.Tabl H/R,Z,E','Dg.Carcinoma pulmonum-Th.Kemioterapia','Dg.Sarcoidosis-Th.Cutasan')
GROUP BY t.ID_Pacientit,t.Pershkrimi
ORDER BY t.ID_Pacientit ASC



--8 QUERIES TE THJESHTA ME >=2 TABELA 

--1)Pacientet te cilet kane qene ne terminet e caktuara 
SELECT T.Termini_ID, P.Emri, P.Mbiemri,T.Data,T.Ora
FROM Termini T
LEFT OUTER JOIN Pacienti P
ON T.ID_Pacientit=P.ID_Pacientit
WHERE (T.Ora BETWEEN '15:10' AND '15:55') AND T.Data = '1/9/2022'
GROUP BY T.Termini_ID, P.Emri, P.Mbiemri,T.Data,T.Ora


--2)Pacientet qe kane qene ne daten e caktuar
SELECT p.ID_Pacientit, p.Emri,p.Mbiemri,t.Data,t.Ora,t.Termini_ID
FROM Pacienti p
LEFT OUTER JOIN Termini t
ON p.ID_Pacientit=t.ID_Pacientit
WHERE t.Data = '4/9/2022'


--3)Pacientet dhe pershkrimi i tyre

SELECT p.Emri , p.Mbiemri , t.Pershkrimi
FROM Pacienti p
INNER JOIN Terapia t
ON	p.ID_Pacientit=t.ID_Pacientit


--4)Terminet te cilat kane pranuar keshilla mjekesore

SELECT T.Data,S.[Keshilla Mjekesore]
FROM Termini T
INNER JOIN Sherbimet S
ON S.Termini_ID = T.Termini_ID

--5)Shuma maksimale e paguar

SELECT MAX(D.Shuma) AS [Shuma maksimale e paguar]
FROM Detyrimi D
INNER JOIN Pacienti P
ON D.ID_Pacientit=P.ID_Pacientit

--6)Numri i termineve te rezervuara ne baze te ID-se se pacientit

SELECT P.Emri,P.Mbiemri,COUNT(T.Termini_ID) AS [Numri i termineve te rezervuara]
FROM Termini T
LEFT OUTER JOIN Pacienti P
ON T.ID_Pacientit=P.ID_Pacientit
WHERE P.ID_Pacientit='6'
GROUP BY P.Emri,P.Mbiemri

--7)Fitimi total per daten e caktuar

SELECT SUM(D.Shuma) AS [Fitimi]
FROM Termini T
RIGHT OUTER JOIN Sherbimet S
ON S.Termini_ID=T.Termini_ID
RIGHT OUTER JOIN Detyrimi D
ON D.Sherbimet_ID=S.Sherbimet_ID
WHERE T.Data='4/9/2022'


--8) Pacientet qe kane paguar me cash

SELECT P.ID_Pacientit,P.Emri,P.Mbiemri,D.Cash
FROM Detyrimi D
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
WHERE D.Cash='Po'



--8 QUERIES TE AVANCUARA ME >=2 TABELA

--1)Pacientet te cilet kane qene ne terminin e caktuar dhe pershkrimin e tyre

SELECT P.ID_Pacientit,P.Emri,P.Mbiemri,T.Data,T.Ora,TP.Pershkrimi
FROM Termini T
LEFT OUTER JOIN  Sherbimet S
ON S.Termini_ID=T.Termini_ID
LEFT OUTER JOIN Terapia TP
ON S.Sherbimet_ID=TP.Sherbimet_ID
LEFT OUTER JOIN Pacienti P 
ON P.ID_Pacientit=TP.ID_Pacientit
WHERE T.Data = '1/9/2022'
ORDER BY 1

--2)Shuma e paguar nga pacienti i caktuar ne daten e caktuar

SELECT SUM(D.Shuma) AS [Shuma e paguar nga pacienti per daten e dhene]
FROM Termini T
INNER JOIN Sherbimet S
ON S.Termini_ID=T.Termini_ID
INNER JOIN Detyrimi D
ON D.Sherbimet_ID=S.Sherbimet_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
WHERE T.Data = '1/9/2022' AND P.ID_Pacientit='7'


--3)Pacientet ne daten kur kane bere EKG

SELECT P.ID_Pacientit, P.Emri,P.Mbiemri,T.Data,T.Ora,S.EKG
FROM Termini T
FULL JOIN Sherbimet S
ON S.Termini_ID=T.Termini_ID
FULL JOIN Pacienti P
ON P.ID_Pacientit=S.ID_Pacientit
WHERE S.EKG = 'Po'

--4)Sa pacient kane bere EKG ne daten e caktuar
SELECT COUNT(S.EKG) AS [Nr. i EKG]
FROM Termini T
LEFT OUTER JOIN Sherbimet S
ON S.Termini_ID=T.Termini_ID
LEFT OUTER JOIN Pacienti P
ON P.ID_Pacientit=S.ID_Pacientit
WHERE S.EKG = 'Po' AND T.Data = '4/9/2022'

--5)Numri i pacientave qe kane paguar me kartele ne daten e dhene
SELECT COUNT(D.[Credit cart]) AS "Numri i paguesve me kartele"
FROM Detyrimi D
INNER JOIN Termini T
ON T.Termini_ID = D.ID_Pacientit
WHERE D.[Credit cart]='Po'

--6)Mesatarja e pageses se pacienteve te cekur 

SELECT AVG(D.Shuma) AS [Shuma]
FROM Detyrimi D
LEFT OUTER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
WHERE P.Mbiemri IN ('Gashi','Krasniqi','Qorkadiu')


--7)Pacientet te cilet kane shpenzuar mbi 50 euro
SELECT P.ID_Pacientit,P.Emri,P.Mbiemri,SUM(D.Shuma) AS [Fitimi individual mbi 50 euro]
FROM Detyrimi D
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
GROUP BY P.Emri,P.Mbiemri, P.ID_Pacientit
HAVING SUM(D.Shuma)>50

--8)Shuma totale e ne mes te 2 datave

SELECT SUM(D.Shuma) AS [Fitimi Total]
FROM Detyrimi D
LEFT OUTER JOIN Pacienti P 
ON P.ID_Pacientit=D.ID_Pacientit
WHERE D.Data BETWEEN '1/9/2022' AND '4/9/2022'

--9) (Shtese per 8 queries me mbi 2 tabela te avancuar) Pacientet , pershkrimi , shuma dhe data e pageses
SELECT P.Emri , P.Mbiemri , TM.Data,TM.Ora,TP.Pershkrimi,TM.Termini_ID,D.Shuma,D.Cash,D.[Credit cart],D.Data "Data e Pageses",D.Detyrimi_ID
FROM Termini TM
INNER JOIN Sherbimet S
ON TM.Termini_ID=S.Termini_ID
INNER JOIN Terapia TP
ON TP.Sherbimet_ID=S.Sherbimet_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=TP.ID_Pacientit
INNER JOIN Detyrimi D
ON D.Detyrimi_ID=S.Sherbimet_ID



--8 SUBQUERIES TE THJESHTA

--1)Sa termine kane bere pacientet e caktuar
SELECT COUNT(T.ID_Pacientit) AS [Numri total]
FROM Termini T
INNER JOIN Pacienti P
ON P.ID_Pacientit=T.ID_Pacientit
WHERE T.ID_Pacientit in 
(
SELECT  T.ID_Pacientit
FROM Termini T
INNER JOIN Pacienti P
ON P.ID_Pacientit=T.ID_Pacientit
WHERE T.ID_Pacientit = '6'
GROUP BY T.ID_Pacientit
)

--2)Pacientat me peshe me te larte se mesatarja e tyre

SELECT P.Emri,P.Mbiemri,P.Pesha,
(SELECT AVG(P.Pesha) 
FROM Pacienti P
)AS "Pesha Mesatare"

FROM Pacienti P
WHERE P.Pesha >=
(SELECT AVG(P.Pesha) 
FROM Pacienti P
)


--4)Pacientet qe kane peshe me te madhe se mesatarja e peshes se personave mbi 18 vjeq
SELECT P.Emri,P.Mbiemri,P.Pesha,P.Mosha,
(SELECT AVG(P.Pesha) 
FROM Pacienti P
WHERE P.Mosha>=18
)AS "Pesha Mesatare"

FROM Pacienti P
WHERE P.Pesha >=
(SELECT AVG(P.Pesha) 
FROM Pacienti P
WHERE P.Mosha>=18
)

--5)ID-te e pacienteve qe kane paguar mbi 50 euro

SELECT D.ID_Pacientit,D.Shuma
FROM Detyrimi D
WHERE D.Shuma >=50
(
SELECT COUNT(D.Shuma)
FROM Detyrimi D
WHERE D.Shuma>=50
)

SELECT * FROM Detyrimi

--6)ID-te e pacienteve qe kane marre Keshilla Mjekesore dhe infuzion dhe a kane bere spirometri apo jo

SELECT S.ID_Pacientit, S.Spirometri
FROM Sherbimet S
WHERE S.ID_Pacientit IN
(
SELECT S.ID_Pacientit
FROM Sherbimet S
INNER JOIN Termini T
ON S.Termini_ID=T.Termini_ID
WHERE (S.Infuzion='Po' AND S.[Keshilla Mjekesore]='Po') AND T.Data='4/9/2022'
)


--7)ID-te e pacientave qe kane qene ne orarin e caktuar

SELECT T.ID_Pacientit,T.Data,T.Ora
FROM Termini T
WHERE T.Termini_ID IN
(
SELECT T.ID_Pacientit
FROM Termini T
WHERE T.Data='1/9/2022' AND (T.Ora BETWEEN '15:10' AND '17:45')
)

--8)Personi me pagesen me te larte per ordinancen

SELECT D.ID_Pacientit,P.Emri,P.Mbiemri,D.Shuma
FROM Detyrimi D
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
WHERE D.Shuma=
(
SELECT MAX(D.Shuma)
FROM Detyrimi D
)


--8 SUBQUERIES TE AVANCUARA

--1)Personi qe ka paguar me se shumti dhe termini i tij


SELECT P.Emri,P.Mbiemri,T.Data,T.Ora
FROM Sherbimet S
LEFT OUTER JOIN Termini T
ON S.Termini_ID=T.Termini_ID
LEFT OUTER JOIN Detyrimi D
ON D.Sherbimet_ID=S.Sherbimet_ID
LEFT OUTER JOIN Pacienti P
ON P.ID_Pacientit = D.ID_Pacientit
WHERE D.Shuma =
(
SELECT MAX(D.Shuma)
FROM Sherbimet S
LEFT OUTER JOIN Termini T
ON S.Termini_ID=T.Termini_ID
LEFT OUTER JOIN Detyrimi D
ON D.Sherbimet_ID=S.Sherbimet_ID

)



--2)Personat qe kane marre kete terapi dhe detyrimi i tyre


SELECT P.Emri,P.Mbiemri,D.Shuma,T.Pershkrimi,TM.Data,TM.Ora
FROM Termini TM
INNER JOIN Sherbimet S
ON TM.Termini_ID=S.Termini_ID
INNER JOIN Detyrimi D
ON D.Sherbimet_ID=S.Sherbimet_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
INNER JOIN Terapia T 
ON T.ID_Pacientit=P.ID_Pacientit


WHERE T.Terapia_ID IN
(
SELECT T.Terapia_ID
FROM Terapia T
WHERE T.Pershkrimi='Dg.Carcinoma pulmonum-Th.Kemioterapia'
)
ORDER BY P.Emri


--3)Pacientat qe kane paguar me cash 


SELECT P.ID_Pacientit, P.Emri,P.Mbiemri,D.Cash,D.Data

FROM Sherbimet S
INNER JOIN Detyrimi D
ON S.Sherbimet_ID=D.Detyrimi_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
WHERE D.Detyrimi_ID IN
(
SELECT D.Detyrimi_ID
FROM Detyrimi D
WHERE D.Cash = 'Po'
)
ORDER BY 2


--4)Pesha e pacientit qe ka marre nje terapi te caktuar


SELECT P.ID_Pacientit, P.Pesha,T.Pershkrimi
FROM Terapia T
INNER JOIN Pacienti P
ON P.ID_Pacientit=T.ID_Pacientit
WHERE T.Terapia_ID IN
(
SELECT T.Terapia_ID
FROM Terapia T
WHERE T.Pershkrimi ='Hypertension arterialis-Th.Tabl Lizionopril'

)


--5)Te gjitha informatat per terapine e dhene ne daten dhe oren e caktuar


SELECT M.Emri , M.Mbiemri , P.ID_Pacientit, P.Emri,P.Mbiemri,T.Data,T.Ora,TP.Pershkrimi 
FROM Termini T
INNER JOIN Sherbimet S
ON T.Termini_ID=S.Termini_ID
INNER JOIN Terapia TP
ON TP.Sherbimet_ID=S.Sherbimet_ID
INNER JOIN Mjeku M
ON M.ID_Mjekut = TP.ID_Mjekut
INNER JOIN Pacienti P
ON P.ID_Pacientit=TP.ID_Pacientit
WHERE TP.Terapia_ID IN

(
SELECT T.Terapia_ID
FROM Terapia T
INNER JOIN Sherbimet S
ON S.Sherbimet_ID=T.Sherbimet_ID
INNER JOIN Termini TM
ON TM.Termini_ID=S.Termini_ID
WHERE T.Pershkrimi ='Hypertension arterialis-Th.Tabl Lizionopril' AND TM.Data = '01-09-2022'

)

--6)Pacienti/ja me e re qe kane paguar me kredit kartel 


SELECT P.ID_Pacientit,P.Emri,P.Mbiemri,P.Mosha,D.[Credit cart],D.Shuma
FROM Detyrimi D
INNER JOIN Pacienti P
ON D.ID_Pacientit=P.ID_Pacientit
WHERE D.[Credit cart]='Po' AND P.Mosha=
(
SELECT MIN(P.Mosha)
FROM Detyrimi D
INNER JOIN Pacienti P
ON P.ID_Pacientit=D.ID_Pacientit
WHERE D.[Credit cart]='Po'
)



--7)Pacientat qe kane pas termin ne diference nje ore


SELECT P.ID_Pacientit,P.Emri,P.Mbiemri,P.Ditelindja, T.Data,T.Ora
FROM Termini T
INNER JOIN Pacienti P
ON P.ID_Pacientit=T.ID_Pacientit
WHERE T.Termini_ID IN

(
SELECT T.Termini_ID
FROM Termini T
WHERE (T.Ora BETWEEN '15:10' AND '16:10') AND T.Data = '1/9/2022'
)



--8)Ne cilen ore eshte dhene nje terapi e caktuar


SELECT T.Ora,T.Data
FROM Termini T
INNER JOIN Sherbimet S
ON T.Termini_ID=S.Termini_ID
INNER JOIN Terapia TP
ON TP.Sherbimet_ID=S.Sherbimet_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=TP.ID_Pacientit
WHERE TP.Terapia_ID IN
(
SELECT T.Terapia_ID
FROM Terapia T
WHERE T.Pershkrimi = 'Diabetes Mellitus-Th.Insulin Mixtard'
)




-- 8 QUERY/SUBQUERY DHE PERDORIMI I ALGJEBRES RELACIONARE

--1)Mesatarja e pacienteve qe e ka pas nje terapi specifike

CREATE VIEW vTerapiaSpecifike AS 
SELECT P.ID_Pacientit, P.Emri ,P.Mbiemri,T.Pershkrimi, COUNT(T.Pershkrimi) AS [Nr i personave me kete terapi]
FROM Terapia T
INNER JOIN Pacienti P
ON P.ID_Pacientit=T.ID_Pacientit
WHERE T.Pershkrimi='Dg.Sarcoidosis-Th.Cutasan'
GROUP BY P.ID_Pacientit, P.Emri ,P.Mbiemri,T.Pershkrimi

SELECT AVG(TS.[Nr i personave me kete terapi]) AS [Mesatarja e personave me kete terapi]
FROM vTerapiaSpecifike TS

--2)Sa persona kane pagu cash edhe sa o kon shuma e tyre

CREATE VIEW vCashPayers AS
SELECT P.ID_Pacientit,P.Emri,P.Mbiemri,D.Cash,D.Shuma,T.Data, COUNT(D.Cash) AS [Nr Cash payers]
FROM Termini T
INNER JOIN Sherbimet S
ON S.Termini_ID=T.Termini_ID
INNER JOIN Detyrimi D
ON D.Sherbimet_ID=S.Sherbimet_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=S.ID_Pacientit
WHERE D.Cash = 'Po'
GROUP BY P.ID_Pacientit,P.Emri,P.Mbiemri,D.Cash,D.Shuma,T.Data

SELECT COUNT(CP.ID_Pacientit) AS Numri, SUM(CP.Shuma) AS [Shuma e paguesve ne cash]
FROM vCashPayers CP


--3)Disa te dhena nga pacientet me te vjeter se 40 vjeq dhe nga mjeku (PERDORIMI I UNION)


SELECT M.Emri,M.Mbiemri,M.Nr_Tel
FROM Mjeku M
UNION
SELECT P.Emri,P.Mbiemri,P.Nr_Tel
FROM Pacienti P
WHERE P.Mosha>40


--4)Datat e perbashketa te momentit te terminit dhe momentit te pageses se detyrimit(PERDORIMI I PRERJES)

SELECT T.Data
FROM Termini T

INTERSECT

SELECT D.Data
FROM Detyrimi D


--5)Personat qe kane paguar vetem cash ne te gjitha terminet 

CREATE VIEW vPaguesitCash 
AS
SELECT P.Emri,P.Mbiemri,D.Cash,D.[Credit cart],D.Data
FROM Detyrimi D
INNER JOIN Sherbimet S
ON S.Sherbimet_ID=D.Detyrimi_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=S.ID_Pacientit
WHERE D.Cash = 'Po' 


CREATE VIEW vPaguesit
AS
SELECT P.Emri,P.Mbiemri,D.Cash,D.[Credit cart],D.Data
FROM Detyrimi D
INNER JOIN Sherbimet S
ON S.Sherbimet_ID=D.Detyrimi_ID
INNER JOIN Pacienti P
ON P.ID_Pacientit=S.ID_Pacientit
WHERE D.[Credit cart] LIKE 'Po' 


SELECT PC.Emri,PC.Mbiemri
FROM vPaguesitCash PC
EXCEPT
SELECT P.Emri,P.Mbiemri
FROM vPaguesit P


--6) Sa persona kane  paguar me shume se 50 euro (PERDORIMI I WITH)
 
    WITH ShumaTotale AS(
	SELECT P.Emri,P.Mbiemri,SUM(D.Shuma) AS [Shuma]
	FROM Detyrimi D
	INNER JOIN Sherbimet S
	ON S.Sherbimet_ID=D.Sherbimet_ID
	INNER JOIN Pacienti P
	ON P.ID_Pacientit=S.ID_Pacientit
	GROUP BY P.Emri,P.Mbiemri
	)
	SELECT SH.Emri,SH.Mbiemri,SUM(SH.Shuma) AS [Shuma mbi 50 euro]
	FROM ShumaTotale SH
	GROUP BY SH.Emri,SH.Mbiemri
	HAVING SUM(SH.Shuma) > 50
	 
--7)Personat qe kane pasur mbi 2 termine

   WITH NrTermineve AS(
   SELECT P.Emri,P.Mbiemri,COUNT(T.Termini_ID) AS [Numri i termineve]
   FROM Termini T
   INNER JOIN Sherbimet S
   ON S.Termini_ID=T.Termini_ID
   INNER JOIN Pacienti P
   ON P.ID_Pacientit=S.ID_Pacientit
   GROUP BY P.Emri,P.Mbiemri
   )

   SELECT NT.Emri,NT.Mbiemri,SUM(NT.[Numri i termineve]) AS [Nr total i termineve]
   FROM NrTermineve NT
   GROUP BY NT.Emri,NT.Mbiemri 
   HAVING SUM(NT.[Numri i termineve])=3


--8) Data me fitim prurese

   WITH ShumaPerDate AS(
	SELECT T.Data , SUM(D.Shuma) AS [Shuma]
	FROM Termini T
	INNER JOIN Sherbimet S
	ON T.Termini_ID=S.Sherbimet_ID
	INNER JOIN Detyrimi D
	ON D.Sherbimet_ID=S.Sherbimet_ID
	GROUP BY T.Data
	)

	SELECT MAX(SD.Shuma) AS [Shuma]
	FROM ShumaPerDate SD
	
	--8 PROCEDURA 2 ME PARAMETRA DHE 2 ME KOMBINIME TE SHPREHJEVE (IF,ELSE,WHILE...)
	
	--1)Krijimi i nje procedure qe tregon qytetet e pacienteve

	CREATE PROCEDURE spPacientatQyteti
	AS
	BEGIN
	SELECT P.Emri,P.Mbiemri,P.Qyteti
	FROM Pacienti P
	END

	EXECUTE spPacientatQyteti
	
	--2)Pacientet me terapite e tyre perkatese
	CREATE PROC spPacientiTerapia
	AS
	BEGIN
	SELECT P.Emri,P.Mbiemri,T.Pershkrimi
	FROM Pacienti P
	INNER JOIN Sherbimet S
	ON S.ID_Pacientit=P.ID_Pacientit
	INNER JOIN Terapia T
	ON T.Sherbimet_ID=S.Sherbimet_ID
	END

	EXEC spPacientiTerapia

	--3)Shuma qe cdo pacient ka paguar

	CREATE PROC spPacientetShuma
	AS
	BEGIN
	SELECT P.Emri,P.Mbiemri,SUM(D.Shuma) AS ShumaTotale
	FROM Termini T
	INNER JOIN Sherbimet S
	ON T.Termini_ID=S.Termini_ID
	INNER JOIN Detyrimi D
	ON S.Sherbimet_ID=D.Detyrimi_ID
	INNER JOIN Pacienti P
	ON P.ID_Pacientit=D.ID_Pacientit
	GROUP BY P.Emri,P.Mbiemri
	END
	
	EXEC spPacientetShuma

	--4)Te shfaqet termini dhe terapia e dhene

	CREATE PROC spTerminiTerapia
	AS
	BEGIN
	SELECT T.Data,T.Ora,TP.Pershkrimi
	FROM Termini T
	INNER JOIN Sherbimet S
	ON S.Termini_ID=T.Termini_ID
	INNER JOIN Terapia TP
	ON S.Sherbimet_ID=TP.Sherbimet_ID
	END

	EXEC spTerminiTerapia



	--5)Ne baze te parametrave input , te shfaqet numri i telefonit te pacientit

	CREATE PROCEDURE spNrTelPacienteve
	@Emri varchar(20),
	@Mbiemri varchar(20)
	
	AS
	BEGIN

	SELECT P.Emri,P.Mbiemri,P.Nr_Tel
	FROM Pacienti P
	WHERE P.Emri=@Emri AND P.Mbiemri=@Mbiemri
	END

	EXECUTE spNrTelPacienteve 'Besa','Gashi'


	--6)Ne baze te dates qe pranohet nga useri si input , te shfaqen pacientet ne ato termine te caktuara

	CREATE PROCEDURE spPacientatTermini
	@Data date
	AS
	BEGIN
	SELECT P.Emri,P.Mbiemri,T.Data,T.Ora
	FROM Termini T
	INNER JOIN Pacienti P
	ON P.ID_Pacientit=T.ID_Pacientit
	WHERE T.Data = @Data
	END

	EXEC spPacientatTermini '1/9/2022'
	
	--7) Numri i pacientave qe jane kontrolluar ne daten e caktuar

	CREATE PROCEDURE spNrPacientaveTermini

	@Data date,
	@NumriPacienteve int OUTPUT
	AS
	BEGIN
	SELECT @NumriPacienteve = COUNT(T.ID_Pacientit)
	FROM Termini T
	WHERE T.Data = @Data
	END

	DECLARE @NumriP int
	EXEC spNrPacientaveTermini '1/9/2022', @NumriP OUTPUT
	PRINT @NumriP

	--8)Shuma qe ka paguar pacienti ne terminin e tij

	CREATE PROC spShumaTermini
	@Emri varchar(20),
	@Mbiemri varchar(20),
	@Data date,
	@Shuma int OUTPUT

	AS
	BEGIN

	SELECT @Shuma = SUM(D.Shuma)
	FROM Termini T
	INNER JOIN Sherbimet S
	ON S.Termini_ID=T.Termini_ID
	INNER JOIN Detyrimi D
	ON S.Sherbimet_ID=D.Detyrimi_ID
	INNER JOIN Pacienti P
	ON D.ID_Pacientit=P.ID_Pacientit
	WHERE @Emri = P.Emri AND @Mbiemri = P.Mbiemri AND @Data = T.Data
	
	END

	DECLARE @ShumaPerTermin int
	EXEC spShumaTermini 'Besa', 'Gashi' , '1/9/2022' , @ShumaPerTermin OUTPUT 
	PRINT @ShumaPerTermin

	--9) Perdorimi i if , else ne shembullin me larte
	CREATE PROC spShumaTermini
	@Emri varchar(20),
	@Mbiemri varchar(20),
	@Data date,
	@Shuma int OUTPUT

	AS
	BEGIN

	SELECT @Shuma = SUM(D.Shuma)
	FROM Termini T
	INNER JOIN Sherbimet S
	ON S.Termini_ID=T.Termini_ID
	INNER JOIN Detyrimi D
	ON S.Sherbimet_ID=D.Detyrimi_ID
	INNER JOIN Pacienti P
	ON D.ID_Pacientit=P.ID_Pacientit
	WHERE @Emri = P.Emri AND @Mbiemri = P.Mbiemri AND @Data = T.Data
	
	END

	DECLARE @ShumaPerTermin int 
	EXEC spShumaTermini 'Besa', 'Gashi' , '1/9/2022' , @ShumaPerTermin  output
	IF(@ShumaPerTermin IS NULL)
	PRINT '@ShumaPerTermin is null'
	ELSE 
	PRINT '@ShumaPerTermin is not null'

	--10)Perdorimi i while loop para disa shembujve

	ALTER PROC spShumaTerminiWhile
    @ID int ,
	@Data date,
	@Shuma int OUTPUT

	AS
	BEGIN

	SELECT @Shuma = SUM(D.Shuma)
	FROM Termini T
	INNER JOIN Sherbimet S
	ON S.Termini_ID=T.Termini_ID
	INNER JOIN Detyrimi D
	ON S.Sherbimet_ID=D.Detyrimi_ID
	INNER JOIN Pacienti P
	ON D.ID_Pacientit=P.ID_Pacientit
	WHERE @ID = P.ID_Pacientit AND @Data = T.Data
	
	END

	DECLARE @ID INT  = 1
	DECLARE @ShumaPerTermin int
	EXEC spShumaTerminiWhile  @ID, '1/9/2022' , @ShumaPerTermin  output
	
	WHILE(@ID<=25)
	BEGIN
	PRINT @ShumaPerTermin 
	SET @ID=@ID+1
	END





