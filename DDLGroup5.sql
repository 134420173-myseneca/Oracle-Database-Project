---GROUP NUMBER: 5
--FILE NAME: DDL

-- 1. Sammar Abbas              157-597-170
-- 2. Rabiya Khalid             134-420-173
-- 3. Syed Hussain Arish Rizvi  139-190-177
-- 4. Krishma Arora             021-146-147

-----------------
-----------------

DROP TABLE a2Advertisement;
DROP TABLE a2ClientHouse;

DROP TABLE a2Outlet;
DROP TABLE a2School;
DROP TABLE a2Area;
DROP TABLE a2Referral;
DROP TABLE a2OwnerDetail;
DROP TABLE a2Property;
DROP TABLE a2Client;
DROP TABLE a2Agency;
DROP TABLE a2Employee;
DROP TABLE a2Job;
DROP TABLE a2Cities;
DROP TABLE a2Province;
DROP TABLE a2Country;


--------Country(LookUp)-----
CREATE TABLE a2Country (
country_code CHARACTER(3)
CONSTRAINT country_code_pk PRIMARY KEY,
country_name VARCHAR2(15) NOT NULL
);
-----------Province---------

CREATE TABLE a2Province(
province_code CHARACTER(2)
CONSTRAINT province_code_pk PRIMARY KEY,
province_Name VARCHAR2(15) NOT NULL,
country_Code CHARACTER(3),
CONSTRAINT country_code_fk FOREIGN KEY(Country_Code)
REFERENCES a2Country(Country_Code));

------------Cities------------

CREATE TABLE a2Cities(
City_Code CHARACTER(3) CONSTRAINT city_code_pk PRIMARY KEY,
Province_Code CHARACTER(2),
City_Name VARCHAR2(25) NOT NULL,
CONSTRAINT province_code_fk FOREIGN KEY(province_code)
REFERENCES a2Province(province_code));

----------------- JOB ----------------------

CREATE TABLE a2Job (
    job_id CHARACTER (6),
    job_title VARCHAR2(14),
    CONSTRAINT job_id_pk PRIMARY KEY (job_id)
);

ALTER TABLE a2Job
ADD CONSTRAINT job_id_ck CHECK (job_id LIKE 'AGT%' OR job_id LIKE 'ACC%' OR job_id LIKE 'CLK%');

ALTER TABLE a2Job
ADD CONSTRAINT job_title_ck CHECK (job_title LIKE 'AGENT' OR job_title LIKE 'ACCOUNTANT' OR job_title LIKE 'CLERK');

------------------EMPLOYEE---------------
CREATE TABLE a2Employee(
employee_id CHARACTER(6)
CONSTRAINT employee_id_pk PRIMARY KEY,
first_name varchar2(25) NOT NULL,
last_name Varchar2(25) NOT NULL,
job_id CHARACTER (6),
date_of_joining DATE NOT NULL,
CONSTRAINT job_id_fk FOREIGN KEY (job_id)
REFERENCES a2Job (job_id),
employee_type CHARACTER (8) NOT NULL,
salary NUMBER(7, 2) NULL,
contact# NUMBER(10) NOT NULL,
"apt/unit#" NUMBER(4),
street# NUMBER(5) NOT NULL,
street_name VARCHAR2(25) NOT NULL,
postal_code VARCHAR2(6) NOT NULL,
city_code CHARACTER(3),
CONSTRAINT e_city_code_fk FOREIGN KEY(city_code)
REFERENCES a2Cities(city_code),
email_address varchar2(35) NULL
);

ALTER TABLE a2Employee
ADD CONSTRAINT employee_id_ck CHECK (employee_id LIKE 'EMP%')
ADD CONSTRAINT employee_type_ck CHECK (employee_type LIKE 'FULLTIME' OR employee_type LIKE 'PARTTIME');


------------------Agency---------------
CREATE TABLE a2Agency(
agency_id varchar2(6)
CONSTRAINT agency_id_pk PRIMARY KEY,
agency_name VARCHAR2(30) NOT NULL,
"apt/unit" NUMBER(4),
street# NUMBER(5) NOT NULL,
street_Name VARCHAR2(25) NOT NULL,
postal_code VARCHAR2(6) NOT NULL,
city_code CHARACTER(3),
CONSTRAINT city_code_fk FOREIGN KEY(City_Code)
REFERENCES a2Cities(City_Code)
);

ALTER TABLE a2Agency
ADD CONSTRAINT agency_id_ck CHECK (agency_id LIKE 'AGC%');


----------------- CLIENT ----------------------
CREATE TABLE a2Client(
client_id CHARACTER(6)
CONSTRAINT client_id_pk PRIMARY KEY,
first_name varchar2(25) NOT NULL,
last_name Varchar2(25) NOT NULL,
contact# NUMBER(10) NOT NULL,
"apt/unit#" NUMBER(4),
street# NUMBER(5) NOT NULL,
street_name VARCHAR2(25) NOT NULL,
postal_code VARCHAR2(6) NOT NULL,
email_address varchar2(25) NULL,
"buyer/seller" varchar2(6) NOT NULL,
city_code CHARACTER(3),
CONSTRAINT c_city_code_fk FOREIGN KEY(city_code)
REFERENCES a2Cities(city_code)
);

ALTER TABLE a2Client
ADD CONSTRAINT client_id_ck CHECK (client_id LIKE 'CLT%');

ALTER TABLE a2Client
ADD CONSTRAINT buyer_seller_ck CHECK ("buyer/seller" LIKE 'buyer' OR "buyer/seller" LIKE 'seller' OR "buyer/seller" LIKE 'both');

------------Property--------
CREATE TABLE a2Property(
property_id Varchar2(7)
CONSTRAINT property_id_pk PRIMARY KEY,
"apt/unit" NUMBER(4),
street# NUMBER(5) NOT NULL,
street_name VARCHAR2(25) NOT NULL,
postal_code VARCHAR2(6) NOT NULL,
"#_of_Bedrooms" NUMBER(1) NOT NULL,
"#_of_Bathrooms" NUMBER(1) NOT NULL,
square_feet NUMBER(4) NOT NULL,
property_type VARCHAR2(5) NOT NULL,
"house_landsize(in acre)" NUMBER(7,2),
condo_maintenance_fee NUMBER(3),
city_code CHARACTER(3),
CONSTRAINT p_city_code_fk FOREIGN KEY(city_code)
REFERENCES a2Cities(city_code)
);

ALTER TABLE a2Property
ADD CONSTRAINT property_id_ck CHECK (property_id LIKE 'PRP%');

ALTER TABLE a2Property
ADD CONSTRAINT property_type_ck CHECK (property_type LIKE 'CONDO%' OR property_type LIKE 'HOUSE%');

------------OWNER--------

CREATE TABLE a2OwnerDetail(
owner_id CHARACTER(6)
CONSTRAINT owner_id_pk PRIMARY KEY,
first_name VARCHAR2(25) NOT NULL,
last_name VARCHAR2(25) NOT NULL,
"owners%" CHARACTER(3) NOT NULL,
property_id varchar2(7) NOT NULL,
CONSTRAINT property_id_fk FOREIGN KEY (property_id)
REFERENCES a2Property(property_id));

ALTER TABLE a2OwnerDetail
ADD CONSTRAINT owner_id_ck CHECK (owner_id LIKE 'OWN%');

------------REFERRAL--------

CREATE TABLE a2Referral(
ref_id CHARACTER(6)
CONSTRAINT ref_id_pk PRIMARY KEY,
date_amount_paid DATE NOT NULL,
Amount_Paid NUMBER(3) NOT NULL,
client_id CHARACTER(6),
CONSTRAINT client_id_fk FOREIGN KEY(client_id)
REFERENCES a2Client(client_id)
);

ALTER TABLE a2Referral
ADD CONSTRAINT ref_id_ck CHECK (ref_id LIKE 'REF%');

------------AREA--------

CREATE TABLE a2Area(
area_code CHAR(5)
CONSTRAINT area_code_pk PRIMARY KEY,
area_name VARCHAR2(15) NOT NULL,
comments VARCHAR(200) NOT NULL
);

ALTER TABLE a2Area
ADD CONSTRAINT area_code CHECK (area_code LIKE 'A%');

------------SCHOOL--------

CREATE TABLE a2School(
school_id CHARACTER(6)
CONSTRAINT school_id_pk PRIMARY KEY,
school_name VARCHAR2(25),
school_type VARCHAR2(10),
area_code CHAR(5),
CONSTRAINT area_code_fk FOREIGN KEY(area_code)
REFERENCES a2Area(area_code)
);

ALTER TABLE a2School
ADD CONSTRAINT school_id_ck CHECK (school_id LIKE 'SCH%');

------------------Outlet---------------
CREATE TABLE a2Outlet (
outlet_id varchar2(6)
CONSTRAINT outlet_id_pk PRIMARY KEY,    
outlet_name VARCHAR2(35),
outlet_contact NUMBER(10),
"apt/unit" NUMBER(4),
street# NUMBER(4) NOT NULL,
street_name VARCHAR2(25) NOT NULL,
postal_code VARCHAR2(6) NOT NULL,
email varchar2(25) NULL,
city_code CHARACTER(3),
CONSTRAINT o_city_code_fk FOREIGN KEY(city_code)
REFERENCES a2Cities(city_code)
);

ALTER TABLE a2Outlet
ADD CONSTRAINT outlet_id CHECK (outlet_id LIKE 'OUT%');


-----------BRIDGE : Client House----------------

CREATE TABLE a2ClientHouse(
sale_id CHARACTER(6)
CONSTRAINT sale_id_pk PRIMARY KEY,
CONSTRAINT sale_id_ck CHECK (sale_id LIKE 'SAL%'),
deal_start_date DATE NOT NULL,
listed_selling_price NUMBER(7) NOT NULL,
status varchar2(15),
CONSTRAINT status_ck CHECK (status LIKE 'SOLD' OR status LIKE 'UNSOLD' OR status LIKE 'N/A'),
date_sold DATE NULL,
price_sold NUMBER(7) NULL,
property_id Varchar2(7),
CONSTRAINT ch_property_id_fk FOREIGN KEY(property_id)
REFERENCES a2Property(property_id),
client_id CHARACTER(6),
CONSTRAINT ch_client_id_fk FOREIGN KEY(client_id)
REFERENCES a2Client(client_id),
agency_id varchar2(6),
CONSTRAINT ch_agency_id_fk FOREIGN KEY(agency_id)
REFERENCES a2agency(agency_id),
emp_agent_id CHARACTER(6),
CONSTRAINT ch_emp_agent_id_fk FOREIGN KEY(emp_agent_id)
REFERENCES a2Employee(employee_id),
owner_id CHARACTER(6),
CONSTRAINT ch_owner_id_fk FOREIGN KEY(owner_id)
REFERENCES a2OwnerDetail(owner_id),
area_code CHAR(5),
CONSTRAINT ch_area_code_fk FOREIGN KEY(area_code)
REFERENCES a2Area(area_code),
ref_id CHARACTER(6),
CONSTRAINT ch_ref_id_fk FOREIGN KEY(ref_id)
REFERENCES a2Referral(ref_id)
);

-----------Advertisement----------------

CREATE TABLE a2Advertisement(
ad_id VARCHAR2(20)
CONSTRAINT ad_id_pk PRIMARY KEY,
ad_order_date DATE NOT NULL,
ad_Type VARCHAR2(30) NOT NULL,
CONSTRAINT ad_type_ck CHECK (ad_type LIKE 'NEWSPAPER' OR ad_type LIKE 'WEBSITE' OR ad_type LIKE 'MAGAZINE'),
price_Of_ad NUMBER(3) NOT NULL,
date_published DATE NOT NULL,
sale_id CHARACTER(6),
CONSTRAINT adv_selling_house_id_fk FOREIGN KEY(sale_id)
REFERENCES a2ClientHouse(sale_id),
outlet_id varchar2(6),
CONSTRAINT adv_outlet_id_fk FOREIGN KEY(outlet_id)
REFERENCES a2Outlet(outlet_id)
);

--------------PERMISSION------------------
REVOKE ALL ON a2Country  FROM public;
REVOKE ALL ON a2Province FROM public;
REVOKE ALL ON a2Cities FROM public;
REVOKE ALL ON a2Job FROM public;
REVOKE ALL ON a2Employee FROM public;
REVOKE ALL ON a2Agency FROM public;
REVOKE ALL ON a2Client FROM public;
REVOKE ALL ON a2Property FROM public;
REVOKE ALL ON a2OwnerDetail FROM public;
REVOKE ALL ON a2Referral FROM public;
REVOKE ALL ON a2Area FROM public;
REVOKE ALL ON a2School FROM public;
REVOKE ALL ON a2Outlet FROM public;
REVOKE ALL ON a2ClientHouse FROM public;
REVOKE ALL ON a2Advertisement FROM public;


----Granting ALL permissions to the group members and Clint on the tables that been created for this assignment
GRANT ALL ON a2Country TO dbs301_192e14;
GRANT ALL ON a2Country TO dbs301_192e22;
GRANT ALL ON a2Country TO dbs301_192e05;
--GRANT ALL ON a2Country TO ;
-----------------------------------------
GRANT ALL ON a2Province TO dbs301_192e14;
GRANT ALL ON a2Province TO dbs301_192e22;
GRANT ALL ON a2Province TO dbs301_192e05;
--GRANT ALL ON a2Province TO ;
----------------------------------------
GRANT ALL ON a2Cities TO dbs301_192e14;
GRANT ALL ON a2Cities TO dbs301_192e22;
GRANT ALL ON a2Cities TO dbs301_192e05;
--GRANT ALL ON a2Cities TO ;
---------------------------------------
GRANT ALL ON a2Job TO dbs301_192e14;
GRANT ALL ON a2Job TO dbs301_192e22;
GRANT ALL ON a2Job TO dbs301_192e05;
--GRANT ALL ON a2Job TO ;
-----------------------------------------
GRANT ALL ON a2Employee TO dbs301_192e14;
GRANT ALL ON a2Employee TO dbs301_192e22;
GRANT ALL ON a2Employee TO dbs301_192e05;
--GRANT ALL ON a2Employee TO ;
----------------------------------------
GRANT ALL ON a2Agency TO dbs301_192e14;
GRANT ALL ON a2Agency TO dbs301_192e22;
GRANT ALL ON a2Agency TO dbs301_192e05;
--GRANT ALL ON a2Agency TO ;
--------------------------------------------
GRANT ALL ON a2Client TO dbs301_192e14;
GRANT ALL ON a2Client TO dbs301_192e22;
GRANT ALL ON a2Client TO dbs301_192e05;
--GRANT ALL ON a2Client TO ;
---------------------------------------------
GRANT ALL ON a2Property TO dbs301_192e14;
GRANT ALL ON a2Property TO dbs301_192e22;
GRANT ALL ON a2Property TO dbs301_192e05;
--GRANT ALL ON a2Property TO ;
-----------------------------------------------
GRANT ALL ON a2OwnerDetail TO dbs301_192e14;
GRANT ALL ON a2OwnerDetail TO dbs301_192e22;
GRANT ALL ON a2OwnerDetail TO dbs301_192e05;
--GRANT ALL ON a2OwnerDetail TO ;
--------------------------------------------
GRANT ALL ON a2Referral TO dbs301_192e14;
GRANT ALL ON a2Referral TO dbs301_192e22;
GRANT ALL ON a2Referral TO dbs301_192e05;
--GRANT ALL ON a2Referral TO ;
---------------------------------------------
GRANT ALL ON a2Area TO dbs301_192e14;
GRANT ALL ON a2Area TO dbs301_192e22;
GRANT ALL ON a2Area TO dbs301_192e05;
--GRANT ALL ON a2Area TO ;
---------------------------------------------
GRANT ALL ON a2School TO dbs301_192e14;
GRANT ALL ON a2School TO dbs301_192e22;
GRANT ALL ON a2School TO dbs301_192e05;
--GRANT ALL ON a2School TO ;
---------------------------------------------
GRANT ALL ON a2Outlet TO dbs301_192e14;
GRANT ALL ON a2Outlet TO dbs301_192e22;
GRANT ALL ON a2Outlet TO dbs301_192e05;
--GRANT ALL ON a2Outlet TO ;
--------------------------------------------
GRANT ALL ON a2ClientHouse TO dbs301_192e14;
GRANT ALL ON a2ClientHouse TO dbs301_192e22;
GRANT ALL ON a2ClientHouse TO dbs301_192e05;
--GRANT ALL ON a2ClientHouse TO ;
---------------------------------------------
GRANT ALL ON a2Advertisement TO dbs301_192e14;
GRANT ALL ON a2Advertisement TO dbs301_192e22;
GRANT ALL ON a2Advertisement TO dbs301_192e05;
--GRANT ALL ON a2Advertisement TO ;
--------------------------------------------
