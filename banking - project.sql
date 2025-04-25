create database banking_db;
use banking_db;

 -- creating a Customers table --
 create table Customers (
  Customer_id int  primary key auto_increment,
  First_name varchar(25) not null,
  Last_name varchar(25) not null,
  DOB date,
  Email text,
  Phone_number numeric(20),
  Address text
  );
   
   -- set the auto increment from 1000 --
   alter table Customers auto_increment = 1000;
   
-- creating a Accounts table -- 
create table Accounts (
  acc_num int primary key auto_increment,
  Customer_id int,
  acc_type enum('saving','current'),
  balance decimal (10,2),
  acc_opened_date date,
  status enum('active','inactive','closed'),
  foreign key (Customer_id) references Customers(Customer_id)
  );
  
  -- set account number starting from 3545 --
  alter table Accounts auto_increment = 3545;
  
  -- create a Transactions table
  
  create table Transactions (
   transaction_id int  primary key auto_increment,
   acc_num int,
   transaction_type enum('credit','debit'),
   amount decimal(10,2),
   transaction_date date,
   foreign key (acc_num) references Accounts(acc_num)
   );
   
-- set transaction_id from 887 --
alter table Transactions auto_increment = 887;
   
-- create a Loan table --
create table Loan (
  loan_id int primary key auto_increment,
  Customer_id int,
  loan_type enum('home','personal','vehicle'),
  loan_amount decimal (8,2),
  interest_rate decimal(5,2),
  start_date date,
  end_date date,
  status enum('approved','pending','closed'),
  foreign key (Customer_id) references Customers(Customer_id)
  );

-- set loan_id starts from 565 --
alter table Loan auto_increment = 565;

-- change phone number to bigint --
alter table Customers 
modify  column phone_number bigint;

-- insert values to Customers table --
INSERT INTO Customers (First_name, Last_name, DOB, Email, Phone_number, Address) VALUES
('Danielle','Johnson','1968-01-04','donaldgarcia@mcclain.com',3389083863794,"65423 Garcia Light, West Melanieview, AZ 96148"),
('Stephen','Martinez','1975-01-20','maria95@lee.com',3164752553419,"76483 Cameron Trail, East Lydiamouth, KY 09176"),
('Jason','Hahn','1998-02-23','dianafoster@hotmail.com',2423884969653,"Unit 2871 Box 0122, DPO AP 55834"),
('Candace','Cruz','1989-11-04','tasha01@hotmail.com',5146270482814,"52880 Burns Creek, Natashaport, AR 32072"),
('Natalie','Arroyo','1955-02-14','spenceamanda@gmail.com',7824896383465,"33150 Brianna Avenue Apt. 031, Port Markhaven, KY 88185"),
('Todd','Ryan','1998-07-09','kristenaguirre@gmail.com',1656670106513,"62473 Scott Wall Apt. 080, Port Melindaburgh, NM 63593"),
('Jason','Morales','1953-04-14','ysmith@house-glover.com',8723430980500,"81219 Emma Freeway, Wilsonshire, OR 78425"),
('Bernard','Miller','1994-01-11','james53@yahoo.com',2475107991183,"1354 Samuel Plains, Cherylhaven, TN 73193"),
('Kevin','Alvarado','1958-06-07','prestonjulia@gmail.com',4935348740164,"42786 Daniel Spurs Apt. 805, South David, MN 05730"),
('Rachel','Clark','1966-04-11','kimberly69@moore.com',256342160733,"4330 Raymond Harbors Apt. 458, Frazierside, AK 15619"),
('Natalie','Green','1988-10-20','rodriguezryan@hotmail.com',6981693406088,"6159 Alvarado Crossing, Williamchester, MO 91885"),
('Kenneth','Martinez','1977-11-27','christinaturner@hotmail.com',4436995777387,"148 Davis Terrace, Lake Lance, ID 19814"),
('Andrew','Sanchez','1981-08-17','operry@lee.com',163287083172,"9868 Merritt Summit Suite 743, Katiehaven, SC 31859"),
('Joshua','Jones','1968-09-26','matthew81@hernandez.com',1665876036690,"0546 Medina Street Apt. 734, Tuckerfurt, TN 89517"),
('Lauren','Ramsey','2006-06-28','tinaferguson@yahoo.com',1627204653755,"6417 Kaitlyn Center Suite 310, East Jamestown, FL 31767"),
('David','Caldwell','1987-09-03','xlyons@jackson-lawson.com',4190496631931,"919 Michael Meadow Suite 185, Port Robertfort, NE 47973"),
('Cynthia','Poole','1997-06-05','hthompson@nelson.info',6945314737996,"2735 Peterson Ranch Suite 808, North John, NM 73269"),
('Katherine','Vaughn','1993-04-01','fmcguire@yahoo.com',6349578856855,"4313 Wilson Plain Apt. 337, Jennyhaven, LA 13677"),
('Marissa','Phillips','1973-11-07','alexis82@williams-brown.com',7109477752047,"7190 Edward Port, Christopherbury, OH 55049"),
('Catherine','Gibbs','1964-08-26','tkerr@hotmail.com',4990913341232,"67974 Jesse Squares, Jacquelinemouth, TX 31096"),
('Sandra','French','1991-10-30','owilson@hernandez.com',4994717464887,"5940 Jeremy Spring, Port Emilyview, AZ 99626"),
('Gregory','Stone','1979-05-22','wendygraham@yahoo.com',7565512567468,"4516 Diane Plains, Gutierrezborough, MN 82110"),
('Katherine','Garrett','2001-01-04','josephanderson@kim-wolfe.com',9324808613171,"4846 Baird Gardens, Arnoldfurt, PA 67117"),
('Julie','Taylor','1954-01-17','ymorgan@hotmail.com',449972787558,"5339 Hall Trail Suite 057, Hughesberg, AZ 17048"),
('Wayne','Lawrence','1956-02-15','foxstephen@hotmail.com',6217459615865,"091 Crystal Heights Apt. 161, South Garrettport, AK 06529"),
('Mark','Brown','1973-09-08','hthomas@yahoo.com',2219693792374,"4821 Landry Radial, Daniellechester, KS 60379"),
('Megan','Gonzalez','1975-06-22','youngashley@hotmail.com',4064090974395,"421 Kyle Mill, New Michaelberg, LA 43324"),
('Julie','Thompson','1958-04-15','maria47@yahoo.com',1712368516048,"496 Rodriguez Fort Suite 098, Rosebury, CA 83784"),
('Madison','Blankenship','1969-11-09','taylorsophia@yahoo.com',1138267586926,"640 Robinson Mills Apt. 515, Bruceview, DE 60101"),
('Christopher','Lewis','1992-10-23','buchananjohn@buchanan.com',9335290422842,"05395 Grant Center, Lake Robert, WA 08831"),
('Thomas','Strickland','1984-03-21','ngordon@acosta.net',7007661771159,"9985 Vang Pines, Shawnchester, WY 92484"),
('Danny','Pena','2001-08-15','ohayes@morgan-chavez.biz',5654527111161,"80988 Santiago Loop Suite 604, Michaelshire, IL 20781"),
('Diane','Walker','1956-08-28','danny49@gmail.com',8998094024455,"612 Christopher Pines, South Robert, GA 49004"),
('Larry','Nguyen','1987-12-02','moorekaren@craig.info',7976438156149,"36900 Kevin Forest Apt. 445, North Tylerchester, DC 50335"),
('Amanda','Hall','1987-04-26','sandersjudy@yahoo.com',7159696641605,"516 John Radial Suite 816, Juliebury, WI 22538"),
('Charles','Schultz','1985-05-27','michael23@thomas.com',1277997995527,"449 Michael Cliffs Suite 770, West Marieland, CO 81111"),
('Brooke','Cruz','1988-10-14','kstout@lopez.com',1518203778892,"6590 Jones Court Suite 449, West Christopher, FL 46352"),
('Kyle','Douglas','1994-05-09','brookehurley@yahoo.com',5281685054235,"USCGC Lee, FPO AE 20809"),
('Chris','Richard','1956-03-05','nancy92@bennett.org',7065379473834,"Unit 7359 Box 7746, DPO AP 69636"),
('Robert','Martin','1962-11-19','brett75@villa.com',1247826137506,"61530 Galvan Villages Suite 220, Samanthafort, DC 92977"),
('Taylor','Gilbert','1954-09-08','jason28@lynch.com',1036971179808,"6095 Ashley Ferry, New Theresaland, ND 66997"),
('Kristin','Romero','1950-09-05','ywilliams@yahoo.com',515319520585,"772 Bryan Trail, Johnsonborough, WY 26645"),
('Nina','Stewart','1970-05-24','wking@hotmail.com',4505415667652,"8416 Ryan View Apt. 845, North Markport, NV 79487"),
('Jennifer','Jackson','1979-07-03','wwilliams@hotmail.com',4016582029702,"6909 Erika Land Suite 719, New Michael, SD 37029"),
('John','Wilson','1999-05-11','jholmes@green.info',9473121727155,"2258 David Flats Apt. 370, Angelastad, OH 17510"),
('Cheryl','Miller','1970-05-05','xfox@yahoo.com',2517785289226,"82422 Donovan Fork, Staceyhaven, LA 10837"),
('John','Reid','1986-10-12','colleenmendez@gmail.com',9922995900109,"690 Small Plains, Dawnport, IA 90284"),
('Richard','Chavez','1996-02-26','scottwashington@peterson.com',5625881537147,"46963 Lisa Ports, Jamesburgh, NY 61687"),
('Victor','Parker','1950-11-15','pwagner@aguilar.com',7974801624565,"835 Jones Parkways, Duranview, RI 89682"),
('Cheryl','Anderson','1955-11-16','laura58@yahoo.com',3986800025787,"9526 Wheeler Parkways, Ericksonport, AK 48782"),
('Mark','Rodriguez','1977-08-22','carlsonjoseph@hotmail.com',972896230913,"2636 Salas Street Apt. 283, Whitneyfort, MS 41625"),
('Sue','Stevens','1985-07-28','erica49@yahoo.com',3484344375758,"USNV Roberts, FPO AP 89187"),
('Amy','Huang','1976-02-22','kellyroberts@hotmail.com',5747338484219,"08330 Robert Stravenue, Garciaberg, OH 21202"),
('Richard','Donovan','1981-08-31','katelynmitchell@yahoo.com',1938026206724,"9915 Gibson Row, Smallberg, NY 61845"),
('Joshua','Lamb','1971-10-19','twong@smith.com',2966851612275,"USS Green, FPO AE 59055"),
('Karen','Finley','1969-11-03','desiree30@wilson.net',1459332727956,"339 Alicia Pines Suite 191, Port Amyhaven, OK 70842"),
('Edward','Murphy','1984-09-14','frazierjennifer@yahoo.com',8707286790874,"0391 Rodney Squares Apt. 801, Johnsonchester, WI 18251"),
('Katie','Good','1993-03-31','victoria67@yahoo.com',1825128682300,"Unit 7868 Box 6337, DPO AA 20833"),
('Joshua','Pineda','1998-08-19','pachecorobert@allen.com',7903067383028,"Unit 3959 Box 9534, DPO AE 87036"),
('Adriana','Gutierrez','1968-01-07','conniesimmons@williams-cooper.biz',6624628733427,"PSC 8668, Box 8263, APO AA 27152"),
('Mark','Miller','1979-11-26','nicholsmaria@gmail.com',6990139837354,"USS Lewis, FPO AE 97687"),
('David','Key','1981-11-19','randyallen@rowe-james.net',4458771753556,"204 Phillips Flat, Jerryshire, IA 65945"),
('Andrea','Harding','1972-04-07','plevy@hotmail.com',7252287280801,"USS Duran, FPO AA 18522"),
('Megan','Hall','1997-06-01','robinsonstephen@williamson.org',7008860084840,"11823 Christine Glen Suite 461, Susanmouth, IA 91889"),
('Jeremiah','Sutton','2006-12-28','davisnicholas@alvarez.com',6591803397401,"902 Smith Fords Apt. 614, New John, MS 89241"),
('Peggy','Rivera','2000-09-17','masonterri@davis.com',9996504773586,"94311 Moore Station Apt. 655, North Adamport, MN 35859"),
('Curtis','Miller','1978-08-16','fgarcia@yahoo.com',9956046618398,"24447 Bryan Mews Suite 647, West Johnathanbury, SC 65486"),
('Brittney','Gonzalez','1956-07-28','adam65@james.biz',4593752654793,"5193 Erin Plaza Apt. 737, Marieland, WY 54128"),
('Emily','Taylor','1969-11-25','donna66@cole.info',8868058911352,"656 Alex Green, New Julie, OR 90634"),
('Barbara','Griffin','1975-11-29','michaeljohnson@gmail.com',6112545738757,"1401 Melinda Rue Apt. 238, New Ethan, NE 61063"),
('Jesse','Sullivan','1961-11-05','vfoster@ware.com',3419182553714,"596 Matthews Keys Suite 792, Samanthashire, TX 18057"),
('Lawrence','Allen','1957-04-02','heather86@carlson-andrews.biz',7828274225790,"2368 Ortiz Overpass, Mckinneymouth, GA 11336"),
('Ariana','Flynn','1964-04-20','hillamanda@gmail.com',9788191485807,"34074 Atkins Corners Suite 133, Michellechester, RI 18750"),
('Kristen','Li','2004-02-08','amanda98@morris.com',9481260422325,"2946 Hayes Roads Apt. 684, Shawnfort, OR 00825"),
('Misty','Boone','1955-08-20','melissa86@gmail.com',3745458929750,"12770 Harris Spurs Apt. 424, Lake Michaelland, TN 85555"),
('Gabriel','Sanders','1970-01-31','trios@smith.com',9387005162713,"55426 Darlene Springs, North Alyssa, RI 85700"),
('Frank','Bell','1963-10-17','cjensen@miller.com',9656523413899,"043 Julie Hill Apt. 376, East Victorland, AL 47830"),
('Sarah','Anderson','2006-05-21','amy27@gmail.com',9104300684866,"889 Joshua Inlet, New Samanthaberg, MD 51714"),
('Brenda','Hines','1993-07-07','holly30@miller.com',9904210202758,"52410 Roman Groves Apt. 491, Gibsonstad, NM 74803"),
('Garrett','Moore','2001-12-02','perezwilliam@trevino.com',7562208635365,"518 Harry Unions, South Caseymouth, LA 41224"),
('Mark','Tran','1949-11-02','kellymueller@hotmail.com',7597383206038,"0641 Alyssa Freeway, Vasquezton, VT 37178"),
('Christopher','Morse','2006-10-31','stephen19@gmail.com',6199062344565,"13291 Daniel Mission Suite 561, Tamiborough, ME 61232"),
('Joseph','Wilson','1960-01-08','lewismelissa@gmail.com',3568044206788,"21003 James Locks Suite 199, Samanthaland, CA 26420"),
('Rachel','Ramos','1958-01-22','david70@glass.biz',662532447209,"476 Brown Harbors, Taylorborough, NC 33157"),
('Crystal','Pham','2003-05-21','wcasey@stephens-washington.org',6420593040785,"13348 Kathryn Forges, Kellyburgh, IA 78163"),
('Louis','Rojas','1973-09-16','stacey92@vaughan.info',2701039308705,"PSC 3252, Box 5002, APO AP 92866"),
('Samantha','Schroeder','2006-11-24','brookssheri@yahoo.com',5452267528953,"4422 Stacy Ports, Rosalesshire, HI 79457"),
('Lucas','Lamb','1990-11-24','zunigadonald@miller.com',7043315410067,"7658 Garcia Neck, East Shannon, AZ 39155"),
('Andrew','Green','1956-06-02','george62@jones.com',629620153368,"443 Brandon Ports Suite 205, South Christopherfort, CT 03874"),
('Jamie','Little','1954-11-14','parkerraymond@yahoo.com',1862565270477,"021 Elizabeth Valley Suite 938, Port Paulhaven, ND 90556"),
('Michelle','Wells','1965-04-30','christian08@hotmail.com',1722332061632,"1168 Arnold Walks Suite 870, Rodriguezberg, OK 77562"),
('Brandi','Hanna','1956-02-11','floydmikayla@humphrey-baker.info',246299606530,"0544 Cameron Walks Apt. 324, Schroedermouth, VA 55128"),
('Cassidy','Davis','1979-05-09','wfigueroa@camacho.com',4862890233030,"345 Wagner Roads Apt. 035, Wheelerburgh, NJ 77424"),
('Andrea','Cooper','2006-04-18','mitchellpaul@gmail.com',3334680072290,"466 Stevens Forge Suite 489, Silvatown, TN 49552"),
('Anna','Wheeler','1968-07-12','olsonmatthew@yahoo.com',4443283096520,"6660 Matthew Station Apt. 875, Meganside, LA 13294"),
('Thomas','Figueroa','1998-08-23','destiny35@garner.biz',5494717099917,"684 Brown Walk, East Victoria, MT 75133"),
('Patricia','Hatfield','1959-01-15','kimberlyfreeman@hotmail.com',5007432927129,"6760 Amanda Street Suite 058, North Erica, VA 33114"),
('Jeremy','Wiley','1970-07-14','reyesbrianna@brown.com',7898562575326,"230 David Station, South Nancyview, ND 82176"),
('Brandon','Vang','1994-05-05','williamsdarrell@james-kelley.info',3046184992618,"1173 Kimberly Village, West Jade, GA 05665"),
('Amy','Lozano','1996-02-16','jimmy01@gmail.com',2181143744701,"5561 Melissa Cape, Port Devonburgh, MI 57873");

select Customer_id,First_name
from Customers
where Customer_id > 1094 and Customer_id <= 1099;

-- insert values to Accounts table --
INSERT INTO Accounts (Customer_id, acc_type, balance, acc_opened_date, status) VALUES
(1000, 'current', 70255.94, '2021-10-09', 'closed'),
(1001, 'saving', 45886.64, '2022-07-04', 'closed'),
(1002, 'current', 45843.36, '2024-02-23', 'closed'),
(1003, 'current', 83899.74, '2024-11-20', 'active'),
(1004, 'saving', 59640.45, '2023-08-21', 'active'),
(1005, 'current', 30990.59, '2024-01-20', 'active'),
(1006, 'current', 33286.43, '2025-01-10', 'active'),
(1007, 'saving', 85329.41, '2022-07-22', 'closed'),
(1008, 'saving', 82871.95, '2024-10-11', 'closed'),
(1009, 'current', 91433.6, '2023-05-05', 'active'),
(1010, 'current', 80430.78, '2024-11-03', 'active'),
(1011, 'saving', 62764.86, '2023-03-23', 'active'),
(1012, 'current', 80579.84, '2021-06-19', 'active'),
(1013, 'current', 38871.6, '2023-07-06', 'active'),
(1014, 'saving', 13943.78, '2024-03-24', 'active'),
(1015, 'saving', 88077.91, '2022-06-24', 'active'),
(1016, 'current', 90496.26, '2023-02-21', 'active'),
(1017, 'current', 7737.37, '2021-11-18', 'active'),
(1018, 'saving', 22569.44, '2022-01-29', 'closed'),
(1019, 'current', 8862.2, '2024-07-13', 'active'),
(1020, 'saving', 66885.22, '2022-09-15', 'active'),
(1021, 'current', 81109.78, '2023-12-29', 'active'),
(1022, 'current', 18809.48, '2023-06-07', 'active'),
(1023, 'current', 31906.39, '2022-02-25', 'active'),
(1024, 'saving', 31149.67, '2022-08-23', 'active'),
(1025, 'saving', 72844.86, '2024-05-01', 'closed'),
(1026, 'saving', 83995.12, '2022-06-05', 'active'),
(1027, 'saving', 23851.66, '2022-02-16', 'active'),
(1028, 'saving', 55336.21, '2022-05-24', 'closed'),
(1029, 'current', 20643.19, '2023-07-31', 'inactive'),
(1030, 'current', 8799.25, '2020-11-21', 'active'),
(1031, 'current', 10036.13, '2024-10-27', 'active'),
(1032, 'saving', 63923.32, '2024-08-01', 'inactive'),
(1033, 'current', 56137.61, '2020-04-25', 'active'),
(1034, 'saving', 99564.66, '2025-03-23', 'active'),
(1035, 'saving', 83079.58, '2021-08-04', 'active'),
(1036, 'saving', 23214.0, '2024-02-16', 'active'),
(1037, 'current', 99596.25, '2021-09-23', 'active'),
(1038, 'current', 69402.55, '2021-07-25', 'active'),
(1039, 'saving', 35429.46, '2024-05-02', 'active'),
(1040, 'saving', 10077.48, '2024-07-03', 'active'),
(1041, 'saving', 73072.88, '2023-12-31', 'active'),
(1042, 'current', 58881.51, '2024-02-24', 'active'),
(1043, 'current', 51794.62, '2020-05-20', 'closed'),
(1044, 'saving', 64858.97, '2021-01-30', 'active'),
(1045, 'saving', 75344.62, '2024-02-29', 'active'),
(1046, 'saving', 22904.88, '2022-11-20', 'active'),
(1047, 'saving', 27139.83, '2024-09-26', 'closed'),
(1048, 'current', 20811.68, '2021-01-06', 'active'),
(1049, 'current', 66518.67, '2022-03-17', 'active'),
(1050, 'current', 81101.69, '2020-06-16', 'active'),
(1051, 'saving', 71146.73, '2024-11-01', 'active'),
(1052, 'current', 40792.87, '2025-01-07', 'active'),
(1053, 'saving', 96940.62, '2023-04-30', 'active'),
(1054, 'saving', 65211.43, '2024-10-06', 'active'),
(1055, 'saving', 66603.35, '2024-03-05', 'active'),
(1056, 'saving', 35891.77, '2021-07-17', 'active'),
(1057, 'saving', 36988.32, '2022-03-01', 'active'),
(1058, 'saving', 86013.9, '2022-03-14', 'active'),
(1059, 'saving', 34242.8, '2021-01-17', 'closed'),
(1060, 'current', 43243.48, '2024-02-01', 'active'),
(1061, 'saving', 61287.85, '2022-08-05', 'inactive'),
(1062, 'saving', 41045.99, '2021-02-15', 'active'),
(1063, 'current', 70992.19, '2024-10-13', 'inactive'),
(1064, 'saving', 92617.71, '2024-03-20', 'inactive'),
(1065, 'saving', 53137.58, '2021-10-30', 'active'),
(1066, 'saving', 34915.34, '2021-12-04', 'active'),
(1067, 'saving', 1807.57, '2024-06-22', 'active'),
(1068, 'current', 21364.75, '2024-09-16', 'active'),
(1069, 'saving', 55491.44, '2024-11-22', 'active'),
(1070, 'current', 65184.06, '2025-03-13', 'active'),
(1071, 'saving', 83130.33, '2022-06-10', 'active'),
(1072, 'saving', 52963.54, '2022-02-04', 'closed'),
(1073, 'current', 11029.3, '2022-07-31', 'active'),
(1074, 'current', 29840.03, '2023-12-17', 'active'),
(1075, 'current', 34248.18, '2024-08-01', 'active'),
(1076, 'saving', 1485.01, '2023-06-17', 'active'),
(1077, 'saving', 56282.59, '2022-10-17', 'inactive'),
(1078, 'saving', 81280.49, '2024-01-20', 'inactive'),
(1079, 'current', 70968.88, '2024-03-28', 'active'),
(1080, 'current', 50669.53, '2024-01-20', 'active'),
(1081, 'saving', 503.75, '2020-09-14', 'active'),
(1082, 'saving', 79459.85, '2021-09-24', 'active'),
(1083, 'current', 16378.84, '2024-08-30', 'inactive'),
(1084, 'current', 29592.65, '2022-12-12', 'inactive'),
(1085, 'current', 26506.04, '2023-05-11', 'inactive'),
(1086, 'current', 56206.75, '2023-03-18', 'active'),
(1087, 'saving', 97417.64, '2022-09-19', 'inactive'),
(1088, 'current', 46474.1, '2025-02-16', 'active'),
(1089, 'current', 3441.49, '2021-05-23', 'inactive'),
(1090, 'saving', 7320.58, '2023-09-26', 'active'),
(1091, 'current', 88277.04, '2021-07-23', 'closed'),
(1092, 'saving', 27154.01, '2023-06-16', 'active'),
(1093, 'current', 14479.23, '2020-07-28', 'active'),
(1094, 'current', 81637.46, '2024-10-20', 'active'),
(1095, 'saving', 25001.66, '2023-06-09', 'active'),
(1096, 'current', 70233.14, '2023-06-10', 'closed'),
(1097, 'saving', 34192.51, '2024-01-02', 'active'),
(1098, 'current', 82729.71, '2023-11-26', 'inactive'),
(1099, 'current', 69843.59, '2025-02-14', 'active');

-- inserting rows to Transaction table --
INSERT INTO Transactions (acc_num, transaction_type, amount, transaction_date) VALUES
(3545, 'credit', 10500.75, '2023-02-01'),
(3546, 'debit', 875.50, '2023-04-19'),
(3547, 'credit', 13690.00, '2024-01-10'),
(3548, 'debit', 980.30, '2022-11-05'),
(3549, 'credit', 4200.00, '2023-08-12'),
(3550, 'debit', 1100.20, '2023-03-29'),
(3551, 'credit', 7300.00, '2022-07-21'),
(3552, 'debit', 2100.60, '2023-09-14'),
(3553, 'credit', 1550.45, '2022-10-18'),
(3554, 'debit', 1320.00, '2023-06-03'),
(3555, 'credit', 5100.90, '2022-12-08'),
(3556, 'debit', 750.35, '2023-05-17'),
(3557, 'credit', 9200.75, '2023-01-15'),
(3558, 'debit', 1800.50, '2023-04-11'),
(3559, 'credit', 6200.40, '2022-09-30'),
(3560, 'debit', 1055.00, '2023-07-24'),
(3561, 'credit', 8750.25, '2023-10-10'),
(3562, 'debit', 650.40, '2022-11-01'),
(3563, 'credit', 9900.10, '2023-03-06'),
(3564, 'debit', 1210.15, '2023-12-05'),
(3565, 'credit', 6400.50, '2022-10-12'),
(3566, 'debit', 540.90, '2023-08-15'),
(3567, 'credit', 7100.25, '2024-02-03'),
(3568, 'debit', 1500.60, '2023-04-22'),
(3569, 'credit', 5300.35, '2023-02-20'),
(3570, 'debit', 900.70, '2022-12-25'),
(3571, 'credit', 8400.90, '2023-07-01'),
(3572, 'debit', 620.50, '2023-01-18'),
(3573, 'credit', 10200.00, '2023-09-27'),
(3574, 'debit', 1180.25, '2023-03-14'),
(3575, 'credit', 7800.15, '2022-08-30'),
(3576, 'debit', 640.00, '2024-01-22'),
(3577, 'credit', 5700.10, '2023-05-01'),
(3578, 'debit', 1300.75, '2022-11-16'),
(3579, 'credit', 9200.35, '2022-10-05'),
(3580, 'debit', 1450.60, '2023-06-09'),
(3581, 'credit', 11500.40, '2023-01-11'),
(3582, 'debit', 770.25, '2023-04-13'),
(3583, 'credit', 6600.80, '2022-12-17'),
(3584, 'debit', 1850.10, '2023-05-28'),
(3585, 'credit', 3200.60, '2022-09-09'),
(3586, 'debit', 1200.00, '2023-07-14'),
(3587, 'credit', 9300.30, '2023-11-22'),
(3588, 'debit', 1055.50, '2024-02-10'),
(3589, 'credit', 8600.15, '2023-03-18'),
(3590, 'debit', 1100.00, '2023-08-06'),
(3591, 'credit', 6400.75, '2022-10-21'),
(3592, 'debit', 975.20, '2023-12-15'),
(3593, 'credit', 10250.40, '2023-01-02'),
(3594, 'debit', 1250.25, '2022-09-03'),
(3595, 'credit', 11000.15, '2024-01-06'),
(3596, 'debit', 1499.50, '2023-11-12'),
(3597, 'credit', 4950.25, '2023-05-22'),
(3598, 'debit', 2100.00, '2022-07-19'),
(3599, 'credit', 6700.75, '2023-06-28'),
(3600, 'debit', 1400.60, '2024-01-18'),
(3601, 'credit', 9500.00, '2022-12-23'),
(3602, 'debit', 980.90, '2023-04-07'),
(3603, 'credit', 8900.25, '2023-03-23'),
(3604, 'debit', 750.00, '2023-02-05'),
(3605, 'credit', 6300.75, '2023-06-20'),
(3606, 'debit', 1150.60, '2022-11-29'),
(3607, 'credit', 10200.10, '2024-02-17'),
(3608, 'debit', 1600.20, '2022-08-18'),
(3609, 'credit', 7800.60, '2023-01-04'),
(3610, 'debit', 670.50, '2023-03-31'),
(3611, 'credit', 9800.40, '2023-07-23'),
(3612, 'debit', 1155.10, '2022-09-14'),
(3613, 'credit', 8900.75, '2024-01-13'),
(3614, 'debit', 1150.00, '2023-12-02'),
(3615, 'credit', 7650.25, '2023-08-28'),
(3616, 'debit', 620.75, '2022-10-10'),
(3617, 'credit', 9500.60, '2023-09-07'),
(3618, 'debit', 1050.10, '2024-01-03'),
(3619, 'credit', 7800.25, '2023-11-01'),
(3620, 'debit', 850.50, '2023-07-12'),
(3621, 'credit', 10300.20, '2023-05-09'),
(3622, 'debit', 1900.40, '2022-09-27'),
(3623, 'credit', 10500.00, '2023-12-14'),
(3624, 'debit', 1250.25, '2023-04-17'),
(3625, 'credit', 9300.75, '2022-10-06'),
(3626, 'debit', 800.10, '2023-03-20'),
(3627, 'credit', 11550.40, '2023-01-27'),
(3628, 'debit', 1550.30, '2023-05-19'),
(3629, 'credit', 9200.00, '2023-09-05'),
(3630, 'debit', 1050.90, '2022-12-06'),
(3631, 'credit', 9800.20, '2023-02-10'),
(3632, 'debit', 950.50, '2023-04-26'),
(3633, 'credit', 11000.60, '2022-11-04'),
(3634, 'debit', 760.00, '2023-08-11'),
(3635, 'credit', 8750.90, '2023-02-27'),
(3636, 'debit', 820.50, '2023-07-03'),
(3637, 'credit', 10800.75, '2023-06-04'),
(3638, 'debit', 1055.30, '2022-09-01'),
(3639, 'credit', 11700.40, '2023-01-17'),
(3640, 'debit', 1070.60, '2024-02-07'),
(3641, 'credit', 9600.25, '2023-04-14'),
(3642, 'debit', 1250.00, '2022-08-05'),
(3643, 'credit', 10400.75, '2023-05-23'),
(3644, 'debit', 980.60, '2022-12-13');

-- inserting rows to Loan table --
INSERT INTO Loan (Customer_id, loan_type, loan_amount, interest_rate, start_date, end_date, status) VALUES
(1000, 'home', 15000.00, 4.50, '2022-06-10', '2027-06-10', 'approved'),
(1001, 'vehicle', 22000.00, 6.75, '2023-03-15', '2028-03-15', 'pending'),
(1002, 'personal', 5000.00, 8.20, '2023-01-30', '2026-01-30', 'approved'),
(1003, 'home', 35000.00, 5.60, '2022-11-25', '2027-11-25', 'closed'),
(1004, 'vehicle', 18000.00, 7.00, '2023-02-12', '2028-02-12', 'approved'),
(1005, 'personal', 8000.00, 9.10, '2023-07-20', '2026-07-20', 'pending'),
(1006, 'home', 25000.00, 4.80, '2022-03-18', '2027-03-18', 'approved'),
(1007, 'vehicle', 15000.00, 6.00, '2023-08-25', '2028-08-25', 'closed'),
(1008, 'personal', 12000.00, 7.50, '2023-05-10', '2026-05-10', 'approved'),
(1009, 'home', 40000.00, 5.40, '2022-12-03', '2027-12-03', 'approved'),
(1010, 'vehicle', 23000.00, 6.80, '2023-10-19', '2028-10-19', 'pending'),
(1011, 'personal', 7000.00, 8.90, '2022-09-10', '2025-09-10', 'approved'),
(1012, 'home', 32000.00, 5.10, '2023-06-06', '2028-06-06', 'closed'),
(1013, 'vehicle', 25000.00, 7.20, '2022-05-03', '2027-05-03', 'approved'),
(1014, 'personal', 9500.00, 8.00, '2022-07-11', '2025-07-11', 'approved'),
(1015, 'home', 45000.00, 4.90, '2023-02-15', '2028-02-15', 'pending'),
(1016, 'vehicle', 20000.00, 6.60, '2023-04-20', '2028-04-20', 'approved'),
(1017, 'personal', 11000.00, 7.40, '2023-09-25', '2026-09-25', 'pending'),
(1018, 'home', 38000.00, 5.30, '2022-11-12', '2027-11-12', 'approved'),
(1019, 'vehicle', 21000.00, 6.90, '2022-06-02', '2027-06-02', 'closed'),
(1020, 'personal', 10500.00, 8.30, '2023-05-25', '2026-05-25', 'approved'),
(1021, 'home', 36000.00, 5.20, '2023-03-15', '2028-03-15', 'approved'),
(1022, 'vehicle', 26000.00, 7.10, '2022-08-14', '2027-08-14', 'pending'),
(1023, 'personal', 8000.00, 9.00, '2023-01-08', '2026-01-08', 'approved'),
(1024, 'home', 42000.00, 5.70, '2023-07-17', '2028-07-17', 'approved'),
(1025, 'vehicle', 23000.00, 6.50, '2022-10-01', '2027-10-01', 'closed'),
(1026, 'personal', 7000.00, 8.60, '2023-02-03', '2026-02-03', 'pending'),
(1027, 'home', 25000.00, 5.00, '2023-08-08', '2028-08-08', 'approved'),
(1028, 'vehicle', 19000.00, 6.40, '2022-07-21', '2027-07-21', 'approved'),
(1029, 'personal', 12500.00, 8.70, '2023-06-30', '2026-06-30', 'pending'),
(1030, 'home', 47000.00, 5.80, '2023-05-05', '2028-05-05', 'approved'),
(1031, 'vehicle', 27000.00, 7.30, '2023-01-25', '2028-01-25', 'approved'),
(1032, 'personal', 9500.00, 8.50, '2023-04-17', '2026-04-17', 'pending'),
(1033, 'home', 33000.00, 5.40, '2023-09-06', '2028-09-06', 'approved'),
(1034, 'vehicle', 24000.00, 6.90, '2022-12-14', '2027-12-14', 'pending'),
(1035, 'personal', 13000.00, 9.10, '2023-02-22', '2026-02-22', 'approved'),
(1036, 'home', 30000.00, 5.30, '2023-07-28', '2028-07-28', 'approved'),
(1037, 'vehicle', 21000.00, 6.75, '2022-11-09', '2027-11-09', 'approved'),
(1038, 'personal', 8000.00, 9.00, '2023-05-12', '2026-05-12', 'closed'),
(1039, 'home', 28000.00, 5.60, '2023-03-28', '2028-03-28', 'approved'),
(1040, 'vehicle', 22000.00, 6.80, '2022-04-22', '2027-04-22', 'pending'),
(1041, 'personal', 9000.00, 8.40, '2023-06-15', '2026-06-15', 'approved'),
(1042, 'home', 36000.00, 5.10, '2023-02-01', '2028-02-01', 'approved'),
(1043, 'vehicle', 25000.00, 7.00, '2023-04-28', '2028-04-28', 'pending'),
(1044, 'personal', 11500.00, 8.80, '2022-09-05', '2025-09-05', 'approved'),
(1045, 'home', 39000.00, 5.40, '2022-10-17', '2027-10-17', 'closed'),
(1046, 'vehicle', 21000.00, 6.60, '2023-03-23', '2028-03-23', 'approved'),
(1047, 'personal', 7500.00, 8.10, '2023-07-02', '2026-07-02', 'pending'),
(1048, 'home', 35000.00, 5.00, '2023-06-07', '2028-06-07', 'approved'),
(1049, 'vehicle', 23000.00, 6.80, '2023-01-19', '2028-01-19', 'pending'),
(1050, 'personal', 11000.00, 9.20, '2023-05-17', '2026-05-17', 'approved'),
(1051, 'home', 43000.00, 5.70, '2022-08-03', '2027-08-03', 'approved'),
(1052, 'vehicle', 19000.00, 6.50, '2022-05-30', '2027-05-30', 'closed'),
(1053, 'personal', 9500.00, 8.60, '2023-02-01', '2026-02-01', 'approved'),
(1054, 'home', 33000.00, 5.20, '2023-09-10', '2028-09-10', 'approved'),
(1055, 'vehicle', 22000.00, 6.75, '2023-07-20', '2028-07-20', 'pending'),
(1056, 'personal', 10500.00, 8.90, '2023-01-12', '2026-01-12', 'approved'),
(1057, 'home', 45000.00, 5.60, '2023-05-04', '2028-05-04', 'approved'),
(1058, 'vehicle', 24000.00, 7.10, '2022-12-01', '2027-12-01', 'approved'),
(1059, 'personal', 12000.00, 9.00, '2023-08-21', '2026-08-21', 'pending'),
(1060, 'home', 30000.00, 5.40, '2023-11-09', '2028-11-09', 'approved'),
(1061, 'vehicle', 22000.00, 6.90, '2022-09-17', '2027-09-17', 'approved'),
(1062, 'personal', 9500.00, 8.70, '2023-06-30', '2026-06-30', 'pending'),
(1063, 'home', 38000.00, 5.80, '2022-10-14', '2027-10-14', 'approved'),
(1064, 'vehicle', 21000.00, 6.50, '2023-05-06', '2028-05-06', 'approved'),
(1065, 'personal', 7000.00, 8.10, '2023-07-19', '2026-07-19', 'pending'),
(1066, 'home', 42000.00, 5.30, '2023-04-10', '2028-04-10', 'approved'),
(1067, 'vehicle', 23000.00, 6.80, '2022-08-23', '2027-08-23', 'approved'),
(1068, 'personal', 8500.00, 8.50, '2023-09-13', '2026-09-13', 'approved'),
(1069, 'home', 40000.00, 5.10, '2023-01-04', '2028-01-04', 'approved'),
(1070, 'vehicle', 25000.00, 6.90, '2022-07-30', '2027-07-30', 'pending'),
(1071, 'personal', 10500.00, 8.40, '2023-04-05', '2026-04-05', 'approved'),
(1072, 'home', 47000.00, 5.60, '2022-06-25', '2027-06-25', 'approved'),
(1073, 'vehicle', 22000.00, 6.50, '2023-05-22', '2028-05-22', 'pending'),
(1074, 'personal', 9500.00, 8.80, '2023-02-15', '2026-02-15', 'approved'),
(1075, 'home', 35000.00, 5.70, '2022-10-10', '2027-10-10', 'approved'),
(1076, 'vehicle', 21000.00, 6.90, '2023-01-22', '2028-01-22', 'pending'),
(1077, 'personal', 11500.00, 9.10, '2023-03-17', '2026-03-17', 'approved'),
(1078, 'home', 42000.00, 5.80, '2022-09-10', '2027-09-10', 'approved'),
(1079, 'vehicle', 25000.00, 6.80, '2023-06-17', '2028-06-17', 'approved'),
(1080, 'personal', 10000.00, 8.70, '2023-05-03', '2026-05-03', 'pending'),
(1081, 'home', 33000.00, 5.40, '2022-12-22', '2027-12-22', 'approved'),
(1082, 'vehicle', 23000.00, 6.60, '2023-07-15', '2028-07-15', 'approved'),
(1083, 'personal', 12500.00, 8.20, '2022-11-29', '2025-11-29', 'approved'),
(1084, 'home', 40000.00, 5.90, '2023-01-09', '2028-01-09', 'pending'),
(1085, 'vehicle', 27000.00, 7.10, '2023-08-04', '2028-08-04', 'approved'),
(1086, 'personal', 9500.00, 8.60, '2023-04-24', '2026-04-24', 'approved'),
(1087, 'home', 38000.00, 5.80, '2023-02-17', '2028-02-17', 'approved'),
(1088, 'vehicle', 22000.00, 6.70, '2023-06-30', '2028-06-30', 'pending'),
(1089, 'personal', 10500.00, 8.40, '2023-03-09', '2026-03-09', 'approved'),
(1090, 'home', 42000.00, 5.60, '2022-08-14', '2027-08-14', 'approved'),
(1091, 'vehicle', 20000.00, 6.40, '2023-07-30', '2028-07-30', 'approved'),
(1092, 'personal', 11000.00, 8.70, '2023-02-28', '2026-02-28', 'approved'),
(1093, 'home', 50000.00, 5.50, '2022-12-01', '2027-12-01', 'approved'),
(1094, 'vehicle', 23000.00, 6.50, '2023-05-07', '2028-05-07', 'pending'),
(1095, 'personal', 12000.00, 8.80, '2023-01-18', '2026-01-18', 'approved'),
(1096, 'home', 47000.00, 5.70, '2023-04-21', '2028-04-21', 'approved'),
(1097, 'vehicle', 21000.00, 6.60, '2022-11-14', '2027-11-14', 'closed'),
(1098, 'personal', 10000.00, 8.50, '2023-05-28', '2026-05-28', 'approved'),
(1099, 'home', 45000.00, 5.80, '2023-06-10', '2028-06-10', 'approved');


 -- Basic MySQL Questions--
-- 1.How would you list all the tables in the banking database?
show tables;

-- 2.How can you retrieve all the records from the Customers table?
select * from Customers;

-- 3.Write a query to get the names and email addresses of customers who have an account(customers full name).
select concat(c.First_name,' ',c.Last_name) as Full_name,
       Email
       from Customers c
           where exists (select 1 from Accounts a
                          where a.Customer_id = c.Customer_id
                          );
                          
-- 4.How would you filter the Transactions table to show only credit transactions?
select * 
from Transactions
where transaction_type = 'credit';

-- 5.Write a query to get the total balance of all accounts in the Accounts table.
select sum(balance) as Total_Balance
from Accounts;

-- 6.How can you retrieve the first name, last name, and loan amount of customers with approved loans?
select c.First_name, c.Last_name, l.loan_amount
from Customers c
join Loan l on c.Customer_id = l.Customer_id
where status = 'approved';

-- 7.What SQL query would you use to find customers with accounts whose balance is greater than $10,000?
select Customer_id, acc_num, balance
from Accounts
where balance > 10000.00;

-- 8.How would you retrieve all transactions for a specific account (e.g., acc_num = 3545)?
select * 
from Transactions
where acc_num = 3545;

-- 9.Write a query to get the count of customers who have at least one loan.
select count(distinct Customer_id) as total_customers_with_loans
from Loan
where loan_amount > 0;

insert into Loan (loan_id,Customer_id,loan_amount,loan_type) values (9090,1004,50000.54,'home');
select Customer_id,count(distinct Customer_id) from Loan
group by customer_id
having count(Customer_id) >1;

-- 10.How can you retrieve the customers who have not yet taken any loans?
select c.Customer_id, c.First_name,c.Last_name
from Customers c
where not exists 
     (select 1 from Loan l
             where l.Customer_id = c.Customer_id
             );
             

-- 11.Write a query to get the loan types and their total loan amounts grouped by loan type
select loan_type, 
       sum(loan_amount) as total_loan_amount
 from Loan
 group by loan_type;
 
 -- 12.What is the query to get the most recent transaction date for each account?
select acc_num,
       max(transaction_date) as most_recent_transactions
from Transactions
group by acc_num;

-- 13.How would you calculate the average balance for all customer accounts?
select avg(balance) as avg_balance
from Accounts;

-- 14.Write a query to list customers who have both home and vehicle loans.
select c.Customer_id, c.First_name, c.Last_name
from Customers c
left join Loan l on c.Customer_id = l.Customer_id
where loan_type in ('home', 'vehicle')
group by Customer_id
having count(distinct loan_type) = 2;

-- 15.What query would you use to find the customers who have closed their loans?
select Customer_id
from Loan
where status = 'closed';

-- 16.How would you list all the accounts of customers who live in "AZ"?
select a.acc_num, c.Customer_id
from Accounts a
left join Customers c on a.Customer_id = c.Customer_id
where c.Address like '%, AZ %';

-- 17.How do you get the total number of transactions made by a specific account?(3548)
select acc_num,count(*) as total_transactions
from Transactions
where acc_num = 3548;

-- 18.How would you find out the number of active accounts per customer?
select Customer_id, count(*) as total_number_of_active_accounts
from Accounts
where status = 'active'
group by Customer_id;

-- 19.Write a query to get the customers who have a loan amount greater than $40,000.
select c.Customer_id,
       c.First_name, 
       c.Last_name,
       l.loan_amount
from Customers c
left join Loan l on c.Customer_id = l.Customer_id
where loan_amount > 40000.00;

-- 20.Write a query to retrieve customer details with their associated accounts, ordered by account balance.
select  a.acc_num,c.Customer_id, c.First_name, c.Last_name,c.phone_number, c.Address,
        a.balance
 from Customers c
 join Accounts a on c.Customer_id = a.Customer_id
 order by balance;
 
 -- Intermediate MySQL Questions:
  
-- 1.How would you find the accounts with the highest and lowest balance in the Accounts table?
(select Customer_id,acc_num,balance
from Accounts
order by balance desc
limit 1) 
union
(select Customer_id,acc_num,balance
from Accounts
order by balance asc
limit 1);

-- 2.Write a query to list all customers who have a loan with an interest rate higher than 7%.
select c.Customer_id,c.First_name,c.Last_name,l.interest_rate
from Customers c
join Loan l on c.Customer_id = l.Customer_id
where interest_rate > 7.00;

-- 3.How would you calculate the total loan amount by each loan type (home, personal, vehicle)?
select loan_type,
       sum(loan_amount) as total_loan_amount
       from Loan
group by loan_type; 

-- 4.Write a query to retrieve the customers who have accounts with more than one type (e.g., saving and current).
select c.Customer_id,c.First_name,c.Last_name
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
group by c.Customer_id
having count(acc_type) > 1;

-- 5.Write a query to find the transactions (debit/credit) greater than $5,000 in the last 30 days.
select  c.Customer_id,a.acc_num,t.transaction_type,t.amount,t.transaction_date
from transactions t
join Accounts a on t.acc_num = a.acc_num
join Customers c on a.Customer_id = c.Customer_id
where t.amount > 5000.00 and
      t.transaction_date >= date_sub(curdate(), interval 30 day);
      
-- 6.How would you calculate the total profit from transactions for each account over the last 6 months?
select acc_num,
       sum(case
            when transaction_type = 'debit' then amount
            when transaction_type = 'credit' then amount
            else 0 end) as total_profit
from Transactions
where transaction_date >= date_sub(curdate(), interval 6 month)
group by acc_num;

-- 7.What query would you use to find the account with the highest transaction amount in the Transactions table?
select a.Customer_id,a.acc_num,
       t.transaction_id, t.transaction_type, t.amount as highest_transaction_amount
from Accounts a
join Transactions t on a.acc_num = t.acc_num
order by t.amount desc
limit 1;

-- 8.How would you join the Customers, Accounts, and Loans tables to show customers with both an account and a loan?
select c.Customer_id,a.acc_num,l.loan_id
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
join Loan l on c.Customer_id = l.Customer_id
WHERE a.acc_num IS NOT NULL AND l.loan_id IS NOT NULL;


-- 9.Write a query to find out how many customers have loan types from each city.
select substring_index(substring_index(Address, ',', -2), ',', 1) AS city,
       count(distinct c.Customer_id) as customer_count,
       count(l.loan_type) as loan_type
from Customers c
join Loan l on c.Customer_id = l.Customer_id
group by city;

-- 10.Write a query to retrieve the loan types and the number of loans for each loan status (approved, pending, closed).
-- Changing column status to loan_status
alter table Loan
rename column status to loan_status ;


select loan_type,
       loan_status,
       count(*) as total_loans
from Loan
group by loan_type,loan_status
order by loan_type;


-- 11.How would you use a subquery to retrieve the names of customers whose transaction amount is greater than the average transaction amount?
select c.first_name, c.Last_name
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
join Transactions t on a.acc_num = t.acc_num 
where t.amount > (select avg(amount) from Transactions);

-- 12.Write a query to list all customers who have both approved loan and an account with a balance greater than $20,000.
select c.Customer_id,First_name,Last_name,
	   a.balance
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
join Loan l on c.Customer_id = l.Customer_id
where a.balance > 20000.00 and l.loan_status = 'approved' ;

-- 13.How would you calculate the cumulative loan amount for each loan type over time?
select loan_type,start_date,
       sum(loan_amount) over (partition by loan_type order by start_date) as cumulative_amount
from Loan
order by loan_type, start_date;

-- 14.Write a query to retrieve all transactions made by accounts that have a loan amount greater than $30,000.
 select a.acc_num, t.transaction_id,t.transaction_type,t.amount as transaction_amount,l.loan_amount
 from Transactions t
 join Accounts a on t.acc_num = a.acc_num
 join Loan l on a.Customer_id = l.Customer_id
 where l.loan_amount > 30000.00;
 
 -- 15.What query would you use to get the top 5 customers by total loan amount?
select c.Customer_id, c.First_name,c.Last_name,l.loan_amount
from Customers c
join Loan l on c.Customer_id = l.Customer_id
order by loan_amount desc
limit 5;
-- 16.How would you calculate the total number of transactions (both credit and debit) for each account in a given month?
select a.acc_num,
	count(t.transaction_id) as total_num_of_transaction
from Accounts a 
join Transactions t on a.acc_num = t.acc_num
where t.transaction_date >= '2023-01-01' and
      t.transaction_date <	'2023-02-01'
 group by acc_num;     

-- 17.How would you retrieve the total amount debited and credited for each account in the last 6 months?
select a.acc_num,  
       sum(case when t.transaction_type = 'credit' then amount else 0 end) as total_credits,
       sum(case when t.transaction_type = 'debit' then amount else 0 end) as total_debits
from Accounts a
join Transactions t on a.acc_num = t.acc_num
where t.transaction_date >= date_sub(current_date , interval 6 month) 
group by a.acc_num;  

-- 18.Write a query to calculate the average interest rate(round to 2 decimal) for all home loans.
select round(avg(interest_rate), 2) as avg_interest_rate
from Loan
where loan_type = 'home';    
       
-- 19.How would you display a list of customers with a loan type of "personal" and "approved" status?
select c.Customer_id,c.First_name,c.Last_name
from Customers c
join Loan l on c.Customer_id = l.Customer_id
where  loan_type = 'personal' and      
	   loan_status = 'approved';
       
-- 20.Write a query to find the customers whose loans have an end date before the current date and are still not closed.
select c.Customer_id,c.First_name,c.Last_name,l.end_date
from Customers c
join Loan l on c.Customer_id = l.Customer_id
where l.end_date < current_date() and 
      l.loan_status <> 'closed' ;  
      
 -- Advanced MySQL Questions:
 
-- 1.How would you use a JOIN to retrieve a list of customers, their accounts, and their associated transactions for a specific date range (e.g., last month?)
select c.Customer_id,concat(c.First_name,' ',c.Last_name) as customer_name,
       a.acc_num,
       t.amount, t.transaction_type
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
left join Transactions t on a.acc_num = t.acc_num  
where t.transaction_date >= date_sub( current_time, interval 1 month)
order by c.Customer_id;

-- 2.Write a query to retrieve the customer names, loan types, and loan amounts, along with the average balance in their accounts.
select c.First_name, c.Last_name,
       l.loan_type, l.loan_amount,
       avg(a.balance) as avg_acc_balance
from Customers c 
join Accounts a on c.Customer_id = a.Customer_id
join Loan l on c.Customer_id = l.Customer_id
group by c.First_name, c.Last_name, l.loan_type, l.loan_amount;

-- 3.How would you find customers who have taken both home and vehicle loans and have an account balance greater than $50,000?
select c.Customer_id
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
join Loan l on a.Customer_id = l.Customer_id
where a.balance > 50000.00
group by c.Customer_id
having count(distinct case when l.loan_type ='home' then l.loan_type end) > 0
       and  count(distinct case when l.loan_type ='vehicle' then l.loan_type end) > 0 ;
       
       
-- 4.Write a query to calculate the total loan amounts for each loan type in the last 3 months.
select loan_type,sum(loan_amount) as total_loan_amount
from Loan
where start_date >= date_sub(curdate(), interval 3 month)
group by loan_type;

-- 5.Write a query to get the loan amounts with interest rates over 8%, grouped by the loan status.
select sum(loan_amount) as total_loan_amount,loan_status
from Loan
where interest_rate > 8.00
group by loan_status ;

-- 6.How would you use window functions to calculate the running total of transaction amounts for each account?
select acc_num, amount, transaction_date,
       sum(amount) over (partition by acc_num order by transaction_date) as running_total
from Transactions
order by  acc_num, transaction_date;

-- 7.Write a query to find the loan details for customers who have loans that overlap in terms of start and end dates.
select l1.Customer_id as Customer_id, l1.loan_id as loan1_id,
       l1.start_date as loan1_start_date, l1.end_date as loan1_end_date,
       l2.loan_id as loan2_id, l2.start_date as loan2_start_date,l2.end_date as loan2_end_date
from Loan l1
join  Loan l2 on l1.Customer_id = l2.Customer_id
            and l1.Loan_id <> l2.Loan_id 
            and l1.start_date <= l2.end_date
            and l1.end_date >= l2.start_date
order by Customer_id,loan1_id,loan2_id ;

-- 8.How would you retrieve the average loan amount per loan type, including customers who have never taken a loan?
select avg(l.loan_amount), l.loan_type
from Customers c
left join Loan l on c.Customer_id = l.Customer_id
group by l.loan_type;

-- 9.Write a query to find out the total number of transactions (both credit and debit) for each account type, and sort by the total count.
select a.acc_type,count(*) as total_transactions
from Transactions t 
join Accounts a on t.acc_num = a.acc_num
group by acc_type
order by  total_transactions desc;

-- 10.How would you use a subquery to retrieve the names of customers whose transaction amount is greater than the average transaction amount?
select c.First_name, c.Last_name
from Customers c
join Accounts a on c.Customer_id = a.Customer_id
join Transactions t on a.acc_num = t.acc_num
where t.amount > (select avg(amount) from Transactions)  ;

-- 11.Write a query to list all customers who have both an active loan and an account with a balance greater than $20,000.
select c.First_name, c.Last_name,a.balance
from Customers c 
join Accounts a on c.Customer_id = a.Customer_id
join Loan l on c.Customer_id = l.Customer_id
where l.loan_status = 'approved' and
	a.balance > 20000.00 ;
    
-- 12.How would you calculate the cumulative loan amount for each loan type over time?
select loan_type,start_date,
       sum(loan_amount) over (partition by loan_type order by start_date) as cumulative_loan_amount
from Loan
order by loan_type,start_date ;

-- 13.Write a query to retrieve all transactions made by accounts that have a loan amount greater than $30,000.
select t.*
from Transactions t
join Accounts a on t.acc_num = a.acc_num
join Loan l on a.Customer_id = l.Customer_id
where l.loan_amount > 30000.00 ;

-- 14.How would you create a view to show all active customers, their accounts, and the total loan amounts they owe?
create view active_customer_details as
select c.Customer_id,c.First_name, c.Last_name,
       a.acc_num, a.acc_type,
	   sum(l.loan_amount) as total_loan_amount
from Customers c 
join Accounts a on c.Customer_id = a.Customer_id
left join Loan l on c.Customer_id = l.Customer_id
where a.status = 'active'
group by c.Customer_id,c.First_name, c.Last_name,
         a.acc_num, a.acc_type ;     

select * from active_customer_details ;

-- 15.How would you use a GROUP BY clause to calculate the total number of transactions made per loan type?
select l.loan_type,count(*) as total_number_of_transactions
from Loan l 
join Accounts a on l.Customer_id = a.Customer_id
left join Transactions t on a.acc_num = t.acc_num
group by l.loan_type ;

-- 16.Write a query to show the top 10 customers who have the highest account balances and also have a loan that is approved.
select c.Customer_id, c.First_name, c.Last_name,
	   a.balance
from Customers c  
join Accounts a on c.Customer_id = a.Customer_id
left join Loan l on a.Customer_id = l.Customer_id
where l.loan_status = 'approved' 
order by a.balance desc
limit 10 ;

-- 17.How would you find the average loan duration (end date - start date) by loan type in the Loan table?
select loan_type,
       cast(avg(datediff(end_date, start_date)) as unsigned) as avg_loan_duration
from Loan 
group by  loan_type ; 

-- 18. Write a query to identify customers who have more than one loan with an overlapping period (same start and end dates)
-- 19.How would you use DATE and TIMESTAMP functions to retrieve transactions and loans opened within the last quarter of the year?
-- 20.Write a query to determine if any accounts have made transactions without corresponding loans.

-- 21.How would you use the CASE statement to classify loan statuses as "High Risk" if the loan amount is greater than $50,000?
select loan_id,loan_type,loan_amount,
       case when loan_amount > 50000.00 then 'high_risk' else 'low_risk' end  as risk_level
from Loan
order by risk_level desc,loan_amount  desc ;

-- 22.Write a query to retrieve all loan types with their respective average loan amounts and interest rates.
select loan_type, avg(loan_amount), avg(interest_rate)
from Loan
group by loan_type ;

-- 23.How would you track the loan repayment progress for each customer based on the transaction history (e.g., debits representing loan repayments)?
-- 24.Rank customers by total loan amount (highest to lowest) within each loan type.
 
 with ranked_loans as (
 select c.Customer_id, c.First_name, c.Last_name,
        l.loan_type,sum(l.loan_amount)  as total_loan_amount,
		row_number()over (partition by loan_type order by sum(loan_amount) desc) as Rank_ 
from Loan l
join Customers c on l.Customer_id = c.Customer_id
group by c.Customer_id, c.First_name, c.Last_name,l.loan_type
 )

select   Customer_id, First_name, Last_name,
         loan_type, total_loan_amount
from ranked_loans
where Rank_ =1
order by  loan_type ; 

-- 25.Calculate the running total of transaction amounts for each customer across all their accounts.
select c.Customer_id,
       t.amount, transaction_date,
       sum(t.amount) over (partition by c.Customer_id order by t.transaction_date) as running_total
from Customers c 
join Accounts a on c.Customer_id = a.Customer_id
left join Transactions t on a.acc_num = t.acc_num
order by C.Customer_id, t.Transaction_date ;
       
-- 26.Find the difference in transaction amount between consecutive transactions for each account.
select acc_num,transaction_date,amount,
    lag (amount) over (partition by  acc_num order by  transaction_date)as PreviousTransactionAmount,
    (amount - lag(amount) over (partition by acc_num order by  transaction_date)) as TransactionDifference
from  Transactions
order by  acc_num, transaction_date;

-- 27.Identify the first and last transaction dates per account using window functions.
select acc_num,
       min(transaction_date) over (partition by acc_num ) as first_tranaction_date,
       max(transaction_date) over (partition by acc_num) as last_transaction_date
from Transactions ;

-- 28.Determine the average loan amount and how each customer’s loan compares to it (difference from average).
select l.Customer_id,c.First_name,c.Last_name,l.Loan_id,l.loan_amount,
       avg(l.loan_amount) over () as AverageLoanAmount,
       (l.loan_amount - avg(l.loan_amount) over ()) as DifferenceFromAverage
from 
    Loan l
join
    Customers c on l.Customer_id = c.Customer_id
order by 
    DifferenceFromAverage desc;

       
		
       