---GROUP NUMBER: 5
--FILE NAME: DML

-- 1. Sammar Abbas              157-597-170
-- 2. Rabiya Khalid             134-420-173
-- 3. Syed Hussain Arish Rizvi  139-190-177
-- 4. Krishma Arora             021-146-147

-----------------
-----------------

----------- INSERT VALUES COUNTRY ---------

INSERT INTO A2COUNTRY VALUES('CAN', 'CANADA');

----------- INSERT VALUES Province ---------

INSERT INTO a2Province VALUES('ON','ONTARIO','CAN');
INSERT INTO a2Province VALUES('AB','ALBERTA','CAN');
INSERT INTO a2Province VALUES('QC','QUEBEC','CAN');
INSERT INTO a2Province VALUES('MB','MANITOBA','CAN');
INSERT INTO a2Province VALUES('YT','YUKON','CAN');

----------- INSERT VALUES CITIES ---------

INSERT INTO a2Cities VALUES('YYZ','ON','TORONTO');
INSERT INTO a2Cities VALUES('RDL','ON','RICHMONDHILL');
INSERT INTO a2Cities VALUES('VGN','ON','VAUGHAN');
INSERT INTO a2Cities VALUES('AJX','ON','AJAX');
INSERT INTO a2Cities VALUES('BTN','ON','BRAMPTON');
INSERT INTO a2Cities VALUES('SBH','ON','SCARBOROUGH');
INSERT INTO a2Cities VALUES('NTY','ON','NORTH YORK');
INSERT INTO a2Cities VALUES('MSA','ON','MISSISSAUGA');
INSERT INTO a2Cities VALUES('PKG','ON','PICKERING');
INSERT INTO a2Cities VALUES('OSA','ON','OSHAWA');
INSERT INTO a2Cities VALUES('ETB','ON','ETOBICOKE');

----------- INSERT VALUES JOB ---------

INSERT INTO A2JOB VALUES('ACC01','ACCOUNTANT');
INSERT INTO A2JOB VALUES('AGT01','AGENT');
INSERT INTO A2JOB VALUES('CLK01','CLERK');

------------------EMPLOYEE---------------

INSERT INTO a2Employee(employee_id,first_name,last_name,job_id,date_of_joining,employee_type,salary,contact#,"apt/unit#",street#,street_name,postal_code,city_code,email_address)
VALUES 
('EMP01','John', 'Wick','AGT01',(to_date('01/14/2018','MM/DD/YYYY')),'FULLTIME',NULL,416654321,1101,24,'Bathurst Ave','M9J1P8','NTY','johnwick@gmail.com');

INSERT INTO a2Employee(employee_id,first_name,last_name,job_id,date_of_joining,employee_type,salary,contact#,"apt/unit#",street#,street_name,postal_code,city_code,email_address)
VALUES 
('EMP02','Catherine','Haywood','CLK01',(to_date('07/05/2018','MM/DD/YYYY')),'PARTTIME',1500,416654321,698,17,'Finch Ave','M9W1P3','NTY','cthaywood@outlook.com');

----------- INSERT VALUES Agency ---------

INSERT INTO a2Agency VALUES('AGC101','ABC',12,3245,'Finch Ave W','M9W2P2','ETB');
INSERT INTO a2Agency VALUES('AGC102','Sutton Real Estate',2,7205,'Goreway Dr.','L4T2T9','MSA');
INSERT INTO a2Agency VALUES('AGC103','Century21',2,1780,'Albion Road','M9V1C1','ETB');
INSERT INTO a2Agency VALUES('AGC104','GTA Real Estate Pros',2,1780,'Albion Road','M5V2R3','YYZ');
INSERT INTO a2Agency VALUES('AGC105','Alex Real Estate',21,154,'Bathurst St','M5V2R3','YYZ');
INSERT INTO a2Agency VALUES('AGC106','Homelife Today Realty Ltd',210,31,'Progress Ave','M1P4S6','SBH');
INSERT INTO a2Agency VALUES('AGC107','GTA Real Estate Pros',2,1780,'Albion Road','M5V2R3','NTY');
INSERT INTO a2Agency VALUES('AGC108','CondoNow',300,1120,'Finch Ave W','M3J3H7','NTY');
INSERT INTO a2Agency VALUES('AGC109','Team Zold',56,8854,'Yonge St','L4C0T4','RDL');
INSERT INTO a2Agency VALUES('AGC110','Forest Hill',45,1911,'Avenue Road','M5M3Z9','NTY');

----------------- CLIENT ----------------------
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT01','Krishma','Arora',905123789,3347,'Drew Rd','L4T0A9','MSA','karora@myseneca.ca','buyer');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT02','Kim','Lee',905123456,33,'The Pond Rd','M3J2S5','NTY','klee@myseneca.ca','seller');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT03','Rabia','Khalid',905123357,34,'The Pond Rd','M3J2S5','NTY','rabia.khalid@live.com','seller');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT04','Arjit','Singh',905456789,47,'Monkton Cir','L6Y0B7','BTN','aSingh@myseneca.ca','buyer');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT05','Sunanda','Sharma',789654123,47,'Monkton Cir','L6Y0B7','BTN','sSharma@myseneca.ca','buyer');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT06','Atif','Aslam',905789654,1234,'Mavis Rd','L4T0A9','MSA','karora@myseneca.ca','buyer');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,"apt/unit#",street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT07','Chris','Heslin',647123789,122,384,'Yonge St','M5B1S8','YYZ','cHeslin@myseneca.ca','seller');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,"apt/unit#",street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT08','Ronaldo','Heslin',416897520,122,384,'Yonge St','M5B1S8','YYZ','rHeslin@myseneca.ca','seller');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,"apt/unit#",street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT09','Jeanine','Smith',3654483697,1024,1284,'Danforth Rd','M1J1E9','SBH','Jsmith@myseneca.ca','seller');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT10','John','Lichompt',519367254,4242,'Dundas St W','M8X1Y6','ETB','ljohn123@myseneca.ca','buyer');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT11','Antonio','Pirone',416789850,530,'Carriville Rd','L4C6E6','RDL','apirone@myseneca.ca','seller');
INSERT INTO a2Client (client_id,first_name,last_name,contact#,"apt/unit#",street#,street_name,postal_code,city_code,email_address,"buyer/seller")
VALUES('CLT12','Leo','McDonald',514987357,701,184,'Front St E','M5A4N3','YYZ','leomcd789@myseneca.ca','buyer');

------------Property--------
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP001',3347,'Drew Rd','L4T0A9',3,2,1720,'HOUSE',0.04,'MSA');
INSERT INTO a2Property(property_id,"apt/unit",street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,condo_maintenance_fee,city_code)
VALUES('PRP002',701,184,'Front St E','M5A4N3',2,2,690,'CONDO',500,'YYZ');
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP003',530,'Carriville Rd','L4C6E6',4,3,2000,'HOUSE',0.05,'RDL');
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP004',4242,'Dundas St W','M8X1Y6',3,2,1820,'HOUSE',0.04,'ETB');
INSERT INTO a2Property(property_id,"apt/unit",street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,condo_maintenance_fee,city_code)
VALUES('PRP005',1024,1284,'Danforth Rd','M1J1E9',1,1,450,'CONDO',400,'SBH');
INSERT INTO a2Property(property_id,"apt/unit",street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,condo_maintenance_fee,city_code)
VALUES('PRP006',1024,1284,'Danforth Rd','M1J1E9',2,2,700,'CONDO',500,'SBH');
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP007',47,'Monkton Cir','L6Y0B7',4,3,2200,'HOUSE',0.05,'BTN');
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP008',33,'The Pond Rd','M3J2S5',4,3,2300,'HOUSE',0.05,'NTY');
INSERT INTO a2Property(property_id,"apt/unit",street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,condo_maintenance_fee,city_code)
VALUES('PRP009',122,384,'Yonge St','M5B1S8',2,2,690,'CONDO',400,'YYZ');
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP010',1234,'Mavis Rd','L4T0A9',3,2,1720,'HOUSE',0.04,'MSA');
INSERT INTO a2Property(property_id,street#,street_name,postal_code,"#_of_Bedrooms","#_of_Bathrooms",square_feet,property_type,"house_landsize(in acre)",city_code)
VALUES('PRP011',34,'The Pond Rd','M3J2S5',4,3,2300,'HOUSE',0.05,'NTY');

------------OWNER--------
INSERT INTO a2OwnerDetail VALUES ('OWN01','Krishma','Arora',100,'PRP001');
INSERT INTO a2OwnerDetail VALUES ('OWN02','Kim','Lee',100,'PRP008');
INSERT INTO a2OwnerDetail VALUES ('OWN03','Arjit','Singh',50,'PRP007');
INSERT INTO a2OwnerDetail VALUES ('OWN04','Sunanda','Sharma',50,'PRP007');
INSERT INTO a2OwnerDetail VALUES ('OWN05','Ronaldo','Heslin',40,'PRP009');
INSERT INTO a2OwnerDetail VALUES ('OWN06','Chris','Heslin',60,'PRP009');
INSERT INTO a2OwnerDetail VALUES ('OWN07','Jeanine','Smith',100,'PRP005');
INSERT INTO a2OwnerDetail VALUES ('OWN08','John','Lichompt',100,'PRP004');
INSERT INTO a2OwnerDetail VALUES ('OWN09','Atif','Aslam',70,'PRP010');
INSERT INTO a2OwnerDetail VALUES ('OWN10','Rabia','Khalid',100,'PRP011');

------------REFERRAL--------
INSERT INTO a2Referral VALUES ('REF01',(TO_DATE('09-JUL-2018','DD-MON-YYYY')),500,'CLT03');
INSERT INTO a2Referral VALUES ('REF02',(TO_DATE('11-AUG-2018','DD-MON-YYYY')),500,'CLT01');
INSERT INTO a2Referral VALUES ('REF03',(TO_DATE('09-SEP-2018','DD-MON-YYYY')),500,'CLT04');
INSERT INTO a2Referral VALUES ('REF04',(TO_DATE('10-OCT-2018','DD-MON-YYYY')),500,'CLT06');
INSERT INTO a2Referral VALUES ('REF05',(TO_DATE('20-NOV-2018','DD-MON-YYYY')),500,'CLT08');
INSERT INTO a2Referral VALUES ('REF06',(TO_DATE('24-DEC-2018','DD-MON-YYYY')),500,'CLT11');
INSERT INTO a2Referral VALUES ('REF07',(TO_DATE('09-JAN-2019','DD-MON-YYYY')),500,'CLT02');
INSERT INTO a2Referral VALUES ('REF08',(TO_DATE('14-MAR-2019','DD-MON-YYYY')),500,'CLT05');
INSERT INTO a2Referral VALUES ('REF09',(TO_DATE('09-JUN-2019','DD-MON-YYYY')),500,'CLT07');
INSERT INTO a2Referral VALUES ('REF10',(TO_DATE('05-AUG-2019','DD-MON-YYYY')),500,'CLT09');

------------AREA--------
INSERT INTO a2Area VALUES('A01','Waterfront','The Waterfront area offers a dynamix mix of parks, shopping, arts and culture, shops, restaurants, all connected by waters Edge Promenade');
INSERT INTO a2Area VALUES('A02','City Centre','Located in the heart of the action, it includes some of Torontos most dynamic areas');
INSERT INTO a2Area VALUES('A03','MIDTOWN','Midtown contains a certifiably eclectic array of districts, Theres tony Bloor-Yorkville with its luxury boutiques, high-end spas and exclusive restaurants, its close to University of Toronto');
INSERT INTO a2Area VALUES('A04','Old Town','The birth of Toronto, this central locale includes the original 10 blocks that comprised the Town of York');
INSERT INTO a2Area VALUES('A05','Don Valley','East of the city Centre,the Don Valley region id verdant, green and peaceful.');
INSERT INTO a2Area VALUES('A06','High Park','The heart of the neighbourhood is the sprawling, leafy High Park, home to a small zoo, an extensive trail network, adventure playgrounds, a leash-free dog parking and scenic pond ');
INSERT INTO a2Area VALUES('A07','Scarborough','Multicultural, up and coming and full of natural beauty, This is an east end community that boasts some of the Greater Toronto Areas best ethnic food etc.');
INSERT INTO a2Area VALUES('A08','Brampton','Nichnamed the Flower city, Torontos neighbourhood to the west, It is know for its diversity');
INSERT INTO a2Area VALUES('A09','Mississauga','Torontos big city neighbour and Canadas sixth largest city.Just a stones throw from Peason International Airport and about 40 minutes to Union Station by tarin');
INSERT INTO a2Area VALUES('A10','Uptown','Spread your sightseeing wings in the sprawling region of North Toronto, which includes everything from premium shopping and fine dining');

------------SCHOOL--------
INSERT INTO a2School VALUES('SCH1','Panjatan School','ELEMENTRY','A10');
INSERT INTO a2School VALUES('SCH2','Abbasi School','MIDDLE','A09');
INSERT INTO a2School VALUES('SCH3','Risalat School','HIGH','A08');
INSERT INTO a2School VALUES('SCH4','Imamiya School','ELEMENTRY','A07');
INSERT INTO a2School VALUES('SCH5','Ali Murtaza School','MIDDLE','A07');
INSERT INTO a2School VALUES('SCH6','As Sadiq School','MIDDLE','A08');
INSERT INTO a2School VALUES('SCH7','Fatmeyah School','HIGH','A01');
INSERT INTO a2School VALUES('SCH8','Ali Waris School','HIGH','A02');
INSERT INTO a2School VALUES('SCH9','Mola Hussain School','MIDDLE','A03');
INSERT INTO a2School VALUES('SCH10','Gareeb-e-Toos School','ELEMENTRY','A05');

----------- Outlet ---------
INSERT INTO a2Outlet(outlet_id,outlet_name,outlet_contact,street#,street_name,postal_code,email,city_code)
VALUES('OUT1','TORONTO PREMIUM OUTLETS',9053266400,200,'Highway 7','L4L1T9','torontooutlet.ca','VGN');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,"apt/unit",street#,street_name,postal_code,email,city_code)
VALUES('OUT2','CENTURY 21 REALTY INC.',9058831988,18,1,'SPADINA ROAD','L4B3M2','country21.ca','RDL');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,street#,street_name,postal_code,email,city_code)
VALUES('OUT3','TRAILWOOD ESTATES',9053266400,200,'Highway 7','L4L1T9','trailwood.com','VGN');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,street#,street_name,postal_code,email,city_code)
VALUES('OUT4','TC PRINTING OUTLETS',8777027870,65,'HIGH OAK TR','L4E3L9','tcpainting.com','RDL');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,street#,street_name,postal_code,email,city_code) 
VALUES('OUT5','KG PRINTING PRESS',9053266400,200,'Highway 7','L4L1T9','kggroup.ca','VGN' );
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,street#,street_name,postal_code,email,city_code)
VALUES('OUT6','SK PRINTING OUTLETS',9056400123,201,'Highway 7','L4L1T9','skgroup.ca','VGN');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,"apt/unit",street#,street_name,postal_code,email,city_code)
VALUES('OUT7','THE PRINTING PRESS',9053266400,1,40,'Nugget Ave','M1S3A8','theprintingpress.ca','SBH');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,"apt/unit",street#,street_name,postal_code,email,city_code)
VALUES('OUT8','TPH The Printing House',9053266400,5,3240,'Dufferin St','M6A2T3','theprintinghouse.ca','NTY');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,"apt/unit",street#,street_name,postal_code,email,city_code)
VALUES('OUT9','North York Printing and Graphics',9053266400,10,101,'Amber St','L3R3B2','printingandgraphic.ca','YYZ');
INSERT INTO a2Outlet (outlet_id,outlet_name,outlet_contact,"apt/unit",street#,street_name,postal_code,email,city_code)
VALUES('OUT10','The Ultimate Printing Company',9053266400,103,100,'University Ave','M5H4H2','ultimateprintin.ca','YYZ');

-----------BRIDGE : Client House--------

INSERT INTO a2ClientHouse VALUES('SAL001',(to_date('07-01-2018','mm-dd-yyyy')),200000,'SOLD',(to_date('07-04-2019','mm-dd-yyyy')),150000,'PRP001','CLT01',NULL,'EMP01','OWN01','A01',NULL);

INSERT INTO a2ClientHouse VALUES('SAL002',(to_date('10-01-2019','mm-dd-yyyy')),400000,'UNSOLD',NULL,0,'PRP002','CLT02',NULL,'EMP01','OWN02','A02',NULL);

INSERT INTO a2ClientHouse VALUES('SAL003',(to_date('08-01-2018','mm-dd-yyyy')),300000,'SOLD',(to_date('12-04-2019','mm-dd-yyyy')),300000,'PRP003','CLT03',NULL,'EMP01','OWN03','A03','REF03');

INSERT INTO a2ClientHouse VALUES('SAL004',(to_date('02-01-2018','mm-dd-yyyy')),250000,'UNSOLD',NULL,0,'PRP004','CLT04',NULL,'EMP01','OWN04','A04',NULL);

INSERT INTO a2ClientHouse VALUES('SAL005',(to_date('10-02-2018','mm-dd-yyyy')),270000,'N/A',NULL,0,'PRP005','CLT05','AGC105',NULL,'OWN05','A05',NULL);

INSERT INTO a2ClientHouse VALUES('SAL006',(to_date('09-12-2019','mm-dd-yyyy')),550000,'UNSOLD',NULL,0,'PRP006','CLT06',NULL,'EMP01','OWN06','A06','REF06');

INSERT INTO a2ClientHouse VALUES('SAL007',(to_date('07-01-2018','mm-dd-yyyy')),380000,'SOLD',(to_date('11-24-2018','mm-dd-yyyy')),320000,'PRP007','CLT07','AGC107',NULL,'OWN07','A07',NULL);

INSERT INTO a2ClientHouse VALUES('SAL008',(to_date('07-01-2018','mm-dd-yyyy')),580000,'SOLD',(to_date('10-10-2019','mm-dd-yyyy')),530000,'PRP008','CLT08',NULL,'EMP01','OWN08','A08','REF08');

INSERT INTO a2ClientHouse VALUES('SAL009',(to_date('07-01-2018','mm-dd-yyyy')),580000,'SOLD',(to_date('10-10-2019','mm-dd-yyyy')),530000,'PRP009','CLT09',NULL,'EMP01','OWN09','A09',NULL);

INSERT INTO a2ClientHouse VALUES('SAL010',(to_date('07-01-2018','mm-dd-yyyy')),660000,'UNSOLD',NULL,0,'PRP010','CLT10','AGC110',NULL,'OWN10','A10',NULL);

-----------Advertisement----------------

INSERT INTO a2AdvertisEment VALUES ('AD00001',(to_date('08-09-2018','mm-dd-yyyy')),'MAGAZINE',30,(to_date('10-09-2018','mm-dd-yyyy')),'SAL001','OUT1');
INSERT INTO a2AdvertisEment VALUES ('AD00002',(to_date('02-22-2018','mm-dd-yyyy')),'NEWSPAPER',40,(to_date('03-10-2018','mm-dd-yyyy')),'SAL002','OUT2');
INSERT INTO a2AdvertisEment VALUES ('AD00003',(to_date('08-09-2019','mm-dd-yyyy')),'WEBSITE',20,(to_date('12-20-2019','mm-dd-yyyy')),'SAL003','OUT3');
INSERT INTO a2AdvertisEment VALUES ('AD00004',(to_date('07-09-2019','mm-dd-yyyy')),'MAGAZINE',35,(to_date('08-09-2019','mm-dd-yyyy')),'SAL004','OUT4');
INSERT INTO a2AdvertisEment VALUES ('AD00005',(to_date('06-09-2018','mm-dd-yyyy')),'NEWSPAPER',23,(to_date('07-11-2018','mm-dd-yyyy')),'SAL005','OUT5');
INSERT INTO a2AdvertisEment VALUES ('AD00006',(to_date('05-09-2019','mm-dd-yyyy')),'WEBSITE',20,(to_date('06-12-2019','mm-dd-yyyy')),'SAL006','OUT6');
INSERT INTO a2AdvertisEment VALUES ('AD00007',(to_date('06-09-2018','mm-dd-yyyy')),'MAGAZINE',35,(to_date('07-15-2018','mm-dd-yyyy')),'SAL007','OUT7');
INSERT INTO a2AdvertisEment VALUES ('AD00008',(to_date('08-09-2019','mm-dd-yyyy')),'NEWSPAPER',45,(to_date('09-19-2019','mm-dd-yyyy')),'SAL008','OUT8');
INSERT INTO a2AdvertisEment VALUES ('AD00009',(to_date('09-09-2018','mm-dd-yyyy')),'WEBSITE',40,(to_date('10-22-2018','mm-dd-yyyy')),'SAL009','OUT9');
INSERT INTO a2AdvertisEment VALUES ('AD00010',(to_date('03-09-2019','mm-dd-yyyy')),'NEWSPAPER',55,(to_date('04-24-2019','mm-dd-yyyy')),'SAL010','OUT10');

