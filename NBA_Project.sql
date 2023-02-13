--4

create table Echipe(
    id_echipa varchar2(10) not null Primary Key,
    oras varchar2(50),
    nume_echipa varchar2(50),
    conferinta varchar2(50),
    record_meciuri varchar2(50),
    puncte int);
    

   select*
   from sponsorizare;
   

create table Antrenori(
    id_antrenor int not null primary key,
    prenume varchar2(50),
    nume varchar2(50),
    id_echipa varchar2(50),
    foreign key (id_echipa) references echipe(id_echipa)
    );
    
     
    

create table sponsori(
    id_sponsor int not null PRIMARY KEY, 
    nume_sponsor varchar2(50)
);
 
 
create table sponsorizare(
    id_echipa varchar2(10) not null,
    id_sponsor int not null, 
    constraint pk_sponosrizeaza primary key (id_echipa, id_sponsor)
    );
    
 

create table jucatori(
    id_jucator varchar2(10) not null primary key,
    prenume varchar2(50),
    nume varchar2(50),
    numar int,
    puncte decimal(10,2),
    recuperari decimal(10, 2), 
    assisturi decimal(10,2),
    id_echipa varchar2(10),
    foreign key(id_echipa) references echipe(id_echipa)
    );
     
    
create table arene(
    id_arena int not null Primary Key,
    nume_arena varchar2(50),
    capacitate int, 
    an_inaugurare int,
    id_echipa varchar2(10),
    foreign key(id_echipa) references echipe(id_echipa)
    );
    
   
create table Playoffs(
    id_meci int not null Primary Key,
    runda varchar2(50),
    id_echipa_1 varchar2(10),
    id_echipa_2 varchar2(10),
    id_arena_1 int,
    id_arena_2 int,
    victorii_echipa_1 int, 
    victorii_echipa_2 int,
    foreign key(id_echipa_1) references echipe(id_echipa),
    foreign key(id_echipa_2) references echipe(id_echipa),
    foreign key(id_arena_1) references arene(id_arena),
    foreign key(id_arena_2) references arene(id_arena)
    );
     
     

create table Televiziuni(
    id_tv int not null Primary Key,
    nume_tv varchar2(50),
    sfarsit_contract int);

 
    
create table televizare(
    id_meci int not null,
    id_tv int not null,
    constraint pk_televizare primary key(id_meci, id_tv));


--5
insert into echipe
values('MIA', 'Miami', 'Heat', 'Est', '53-29', 646);

insert into echipe
values('BOS', 'Boston', 'Celtics', 'Est', '51-31', 622);

insert into echipe
values('MIL', 'Milwaukee', 'Bucks', 'Est', '51-31', 622);

insert into echipe
values('PHI', 'Philadelphia', '76ers', 'Est', '51-31', 622);

insert into echipe
values('TOR', 'Toronto', 'Raptors', 'Est', '48-34', 585);

insert into echipe
values('CHI', 'Chicago', 'Bulls', 'Est', '46-36', 561);

insert into echipe
values('BRK', 'Brooklyn', 'Nets', 'Est', '44-38', 537);

insert into echipe
values('ATL', 'Atlanta', 'Hawks', 'Est', '44-38', 537);

insert into echipe
values('CLE', 'Cleveland', 'Cavaliers', 'Est', '43-39', 524);

insert into echipe
values('CHA', 'Charlotte', 'Hornets', 'Est', '43-39', 524);

insert into echipe
values('NYK', 'New York', 'Knicks', 'Est', '37-45', 451);

insert into echipe
values('WAS', 'Washington', 'Wizards', 'Est', '35-47', 427);

insert into echipe
values('IND', 'Indiana', 'Pacers', 'Est', '25-57', 305);

insert into echipe
values('DET', 'Detroit', 'Pistons', 'Est', '23-59', 280);

insert into echipe
values('ORL', 'Orlando', 'Magic', 'Est', '22-60', 268);

insert into echipe
values('PHO', 'Phoenix', 'Suns', 'Vest', '64-18', 780);

insert into echipe
values('MEM', 'Memphis', 'Grizzlies', 'Vest', '56-26', 683);

insert into echipe
values('GSW', 'Golden State', 'Warriors', 'Vest', '53-29', 646);

insert into echipe
values('DAL', 'Dallas', 'Mavericks', 'Vest', '52-30', 634);

insert into echipe
values('UTA', 'Utah', 'Jazz', 'Vest', '49-33', 598);

insert into echipe
values('DEN', 'Denver', 'Nuggets', 'Vest', '48-34', 585);

insert into echipe
values('MIN', 'Minnesota', 'Timberwolves', 'Vest', '46-36', 561);

insert into echipe
values('NOL', 'New Orleans', 'Pelicans', 'Vest', '42-40', 512);

insert into echipe
values('CLI', 'Los Angeles', 'Clippers', 'Vest', '36-46', 439);

insert into echipe
values('SAN', 'San Antonio', 'Spurs', 'Vest', '34-48', 415);

insert into echipe
values('LAL', 'Los Angeles', 'Lakers', 'Vest', '33-49', 402);

insert into echipe
values('SAC', 'Sacramento', 'Kings', 'Vest', '30-52', 366);

insert into echipe
values('POR', 'Portland', 'Trail Blazers', 'Vest', '27-55', 329);

insert into echipe
values('OKC', 'Oklahoma City', 'Thunder', 'Vest', '24-58', 293);

insert into echipe
values('HOU', 'Houston', 'Rockets', 'Vest', '20-62', 244);

 
insert into antrenori 
values(501, 'Nate', 'McMillan', 'ATL');

insert into antrenori 
values(502, 'Ime', 'Udoka', 'BOS');

insert into antrenori 
values(503, 'Steve', 'Nash', 'BRK');

insert into antrenori 
values(504, 'Billy', 'Donovan', 'CHI');

insert into antrenori 
values(505, 'James', 'Borrego', 'CHA');

insert into antrenori 
values(506, 'J.B.', 'Bickerstaff', 'CLE');

insert into antrenori 
values(507, 'Jason', 'Kidd', 'DAL');

insert into antrenori 
values(508, 'Michael', 'Malone', 'DEN');

insert into antrenori 
values(509, 'Steve', 'Kerr', 'GSW');

insert into antrenori 
values(510, 'Stephen', 'Silas', 'HOU');

insert into antrenori 
values(511, 'Rick', 'Carlisle', 'IND');

insert into antrenori 
values(512, 'Tyronn', 'Lue', 'CLI');

insert into antrenori 
values(513, 'Frank', 'Vogel', 'LAL');

insert into antrenori 
values(514, 'Taylor', 'Jenkins', 'MEM');

insert into antrenori 
values(515, 'Erik', 'Spoelstra', 'MIA');

insert into antrenori 
values(516, 'Mike', 'Budenholzer', 'MIL');

insert into antrenori 
values(517, 'Chris', 'Finch', 'MIN');

insert into antrenori 
values(518, 'Willie', 'Green', 'NOL');

insert into antrenori 
values(519, 'Tom', 'Thibodeau', 'NYK');

insert into antrenori 
values(520, 'Mark', 'Daigneault', 'OKC');

insert into antrenori 
values(521, 'Jamahl', 'Mosley', 'ORL');

insert into antrenori 
values(522, 'Doc', 'Rivers', 'PHI');

insert into antrenori 
values(523, 'Chauncey', 'Billups', 'POR');

insert into antrenori 
values(524, 'Luke', 'Walton', 'SAC');

insert into antrenori 
values(525, 'Gregg', 'Popovich', 'SAN');

insert into antrenori 
values(526, 'Nick', 'Nurse', 'TOR');

insert into antrenori 
values(527, 'Quin', 'Snyder', 'UTA');

insert into antrenori 
values(528, 'Wes', 'Unseld', 'WAS');

insert into antrenori 
values(529, 'Dwane', 'Casey', 'DET');

insert into antrenori 
values(530, 'Monty', 'Williams', 'PHO');



insert into sponsori
values(1001, 'Nike');

insert into sponsori
values(1002, 'Rakuten');

insert into sponsori
values(1003, 'Bibigo');

insert into sponsori
values(1004, 'FedEx');

insert into sponsori
values(1005, 'Western Union');

insert into sponsori
values(1006, 'Honey');

insert into sponsori
values(1007, 'Prime');

insert into sponsori
values(1008, 'PayPal');

insert into sponsori
values(1000, 'Google');

insert into sponsori
values(1009, 'Motorola');


insert into sponsorizare
values('MIA', 1007);

insert into sponsorizare
values('MIA', 1003);

insert into sponsorizare
values('MIA', 1001);

insert into sponsorizare
values('BOS', 1002);

insert into sponsorizare
values('BOS', 1000);

insert into sponsorizare
values('BOS', 1009);

insert into sponsorizare
values('MIL', 1009);

insert into sponsorizare
values('MIL', 1004);

insert into sponsorizare
values('MIL', 1003);

insert into sponsorizare
values('PHI', 1006);

insert into sponsorizare
values('PHI', 1001);

insert into sponsorizare
values('TOR', 1008);

insert into sponsorizare
values('TOR', 1002);

insert into sponsorizare
values('CHI', 1001);

insert into sponsorizare
values('BRK', 1001);

insert into sponsorizare
values('BRK', 1003);

insert into sponsorizare
values('BRK', 1007);

insert into sponsorizare
values('ATL', 1002);

insert into sponsorizare
values('ATL', 1004);

insert into sponsorizare
values('CHA', 1005);

insert into sponsorizare
values('CHA', 1001);

insert into sponsorizare
values('CHA', 1009);

insert into sponsorizare
values('NYK', 1004);

insert into sponsorizare
values('NYK', 1005);

insert into sponsorizare
values('NYK', 1006);

insert into sponsorizare
values('WAS', 1001);

insert into sponsorizare
values('IND', 1008);

insert into sponsorizare
values('DET', 1002);

insert into sponsorizare
values('ORL', 1009);

insert into sponsorizare
values('ORL', 1007);

insert into sponsorizare
values('PHO', 1004);

insert into sponsorizare
values('PHO', 1008);

insert into sponsorizare
values('MEM', 1001);

insert into sponsorizare
values('GSW', 1003);

insert into sponsorizare
values('GSW', 1008);

insert into sponsorizare
values('GSW', 1006);

insert into sponsorizare
values('DAL', 1002);

insert into sponsorizare
values('DAL', 1008);

insert into sponsorizare
values('UTA', 1004);

insert into sponsorizare
values('DEN', 1005);

insert into sponsorizare
values('MIN', 1009);

insert into sponsorizare
values('NOL', 1001);

insert into sponsorizare
values('NOL', 1004);

insert into sponsorizare
values('CLI', 1001);

insert into sponsorizare
values('CLI', 1000);

insert into sponsorizare
values('CLI', 1006);

insert into sponsorizare
values('LAL', 1001);

insert into sponsorizare
values('LAL', 1000);

insert into sponsorizare
values('LAL', 1003);

insert into sponsorizare
values('SAN', 1001);

insert into sponsorizare
values('SAN', 1007);

insert into sponsorizare
values('SAC', 1004);

insert into sponsorizare
values('POR', 1007);

insert into sponsorizare
values('POR', 1000);

insert into sponsorizare
values('OKC', 1002);

insert into sponsorizare
values('HOU', 1002);


insert into jucatori
values('BUT', 'Jimmy', 'Butler', 22,21.4, 5.9, 5.5, 'MIA'); 

insert into jucatori
values('ADE', 'Bam', 'Adebayo', 13,19.1, 10.1, 3.4, 'MIA');

insert into jucatori
values('TAT', 'Jayson', 'Tatum', 0, 26.9, 8.0, 4.4, 'BOS');

insert into jucatori
values('BRO', 'Jaylen', 'Brown', 7, 23.6, 6.1, 3.5, 'BOS');

insert into jucatori
values('ANT', 'Giannis', 'Antetokounmpo', 34, 29.9, 11.6, 5.8, 'MIL');

insert into jucatori
values('HOL', 'Jrue', 'Holiday', 21, 18.4, 5.0, 7.1, 'MIL');

insert into jucatori
values('EMB', 'Joel', 'Embid', 21, 30.6, 9.9, 4.4, 'PHI');

insert into jucatori
values('HAR', 'James', 'Harden', 1, 21.0, 7.1, 10.5, 'PHI');

insert into jucatori
values('SIA', 'Pascal', 'Siakam', 43, 22.8, 8.5, 5.3, 'TOR');

insert into jucatori
values('FVV', 'Fred', 'VanVleet', 23, 20.3, 4.4, 6.7, 'TOR');

insert into jucatori
values('DER', 'DeMar', 'DeRozan', 11, 27.9, 5.2, 4.9, 'CHI');

insert into jucatori
values('LAV', 'Zach', 'LaVine', 8, 24.4, 4.4, 4.2, 'CHI');

insert into jucatori
values('IRV', 'Kyrie', 'Irving', 11, 27.4, 4.4, 5.8, 'BRK');

insert into jucatori
values('DUR', 'Kevin', 'Durant', 7, 29.9, 7.4, 6.4, 'BRK');

insert into jucatori
values('YOU', 'Trae', 'Young', 11, 28.4, 3.7, 9.7, 'ATL');

insert into jucatori
values('COL', 'John', 'Collins', 20, 16.2, 7.8, 1.8, 'ATL');

insert into jucatori
values('GAR', 'Darius', 'Garland', 10, 21.7, 3.3, 8.6, 'CLE');

insert into jucatori
values('ALL', 'Jarrett', 'Allen', 31, 16.1, 10.8, 1.6, 'CLE');

insert into jucatori
values('BAL', 'LaMelo', 'Ball', 2, 20.1, 6.7, 7.6, 'CHA');

insert into jucatori
values('HAY', 'Gordon', 'Hayward', 20, 15.9, 4.6, 3.6, 'CHA');

insert into jucatori
values('BAR', 'RJ', 'Barrett', 9, 20.0, 5.8, 3.3, 'NYK');

insert into jucatori
values('RAN', 'Julius', 'Randle', 30, 20.1, 9.9, 5.1, 'NYK');

insert into jucatori
values('BEA', 'Bradley', 'Beal', 3, 23.2, 4.7, 6.6, 'WAS');

insert into jucatori
values('POZ', 'Kristaps', 'Porzingis', 6, 20.2, 8.1, 2.3, 'WAS');

insert into jucatori
values('HAL', 'Tyrese', 'Haliburton', 0, 17.5, 4.3, 9.6, 'IND');

insert into jucatori
values('HIE', 'Buddy', 'Hield', 24, 15.6, 3.2, 4.0, 'IND');

insert into jucatori
values('CUN', 'Cade', 'Cunningham', 2, 17.4, 5.5, 5.6, 'DET');

insert into jucatori
values('GRA', 'Jeramy', 'Grant', 9, 19.2, 4.1, 2.4, 'DET');

insert into jucatori
values('ANH', 'Cole', 'Anthony', 50, 16.3, 5.4, 5.7, 'ORL');

insert into jucatori
values('WAG', 'Franz', 'Wagner', 22, 15.5, 4.5, 2.9, 'ORL');

insert into jucatori
values('BOO', 'Devin', 'Booker', 1, 26.8, 5.0, 4.8, 'PHO');

insert into jucatori
values('PAU', 'Chris', 'Paul', 3, 14.7, 4.4, 10.8, 'PHO');

insert into jucatori
values('MOR', 'Ja', 'Morant', 12, 27.4, 5.7, 7.6, 'MEM');

insert into jucatori
values('BAN', 'Desmond', 'Bane', 22, 18.2, 4.4, 2.7, 'MEM');

insert into jucatori
values('CUR', 'Stephen', 'Curry', 30, 25.5, 5.2, 6.3, 'GSW');

insert into jucatori
values('WIG', 'Andrew', 'Wiggins', 22, 17.2, 4.5, 2.2, 'GSW');

insert into jucatori
values('DON', 'Luka', 'Doncic', 77, 28.4, 9.1, 8.7, 'DAL');

insert into jucatori
values('HAJ', 'Tim', 'Hardaway Jr', 11, 14.4, 3.7, 2.2, 'DAL');

insert into jucatori
values('MIT', 'Donovan', 'Mitchell', 45, 25.9, 4.2, 5.3, 'UTA');

insert into jucatori
values('GOB', 'Rudy', 'Gobert', 27, 15.6, 14.7, 1.1, 'UTA');

insert into jucatori
values('JOK', 'Nikola', 'Jokic', 15, 27.1, 13.8, 7.9, 'DEN');

insert into jucatori
values('GOR', 'Aaron', 'Gordon', 50, 15.0, 5.9, 2.5, 'DEN');

insert into jucatori
values('EDW', 'Anthony', 'Edwards', 1, 21.3, 4.8, 3.8, 'MIN');

insert into jucatori
values('KAT', 'Karl-Anthony', 'Towns', 32, 24.6, 10.6, 4.5, 'MIN');

insert into jucatori
values('ING', 'Brandon', 'Ingram', 14, 22.7, 5.8, 5.6, 'NOL');

insert into jucatori
values('MCC', 'CJ', 'McCollum', 3, 22.1, 4.3, 5.1, 'NOL');

insert into jucatori
values('GEO', 'Paul', 'George', 13, 24.3, 6.5, 6.9, 'CLI');

insert into jucatori
values('Jac', 'Reggie', 'Jackson', 1, 16.8, 3.6, 4.8, 'CLI');

insert into jucatori
values('MUR', 'Dejounte', 'Murray', 5, 21.1, 8.3, 9.2, 'SAN');

insert into jucatori
values('POE', 'Jakob', 'Poeltl', 25, 13.5, 9.3, 2.8, 'SAN');

insert into jucatori
values('LBJ', 'LeBron', 'James', 6, 30.3, 8.2, 6.2, 'LAL');

insert into jucatori
values('DAV', 'Anthony', 'Davis', 3, 23.2, 9.9, 3.1, 'LAL');

insert into jucatori
values('FOX', 'De Aaron', 'Fox', 5, 23.2, 3.9, 5.6, 'SAC');

insert into jucatori
values('SAB', 'Domantas', 'Sabonis', 10, 18.9, 12.1, 5.2, 'SAC');

insert into jucatori
values('LIL', 'Damian', 'Lillard', 0, 24.0, 4.1, 7.3, 'POR');

insert into jucatori
values('NUR', 'Jusuf', 'Nurkic', 27, 15.0, 11.1, 2.8, 'POR');

insert into jucatori
values('GIA', 'Shai', 'Gilgeous-Alexander', 2, 24.5, 5.0, 5.9, 'OKC');

insert into jucatori
values('GID', 'Josh', 'Giddey', 3, 12.5, 7.8, 6.4, 'OKC');

insert into jucatori
values('KPJ', 'Kevin', 'Porter Jr', 3, 15.6, 4.4, 6.2, 'HOU');

insert into jucatori
values('GRE', 'Jalen', 'Green', 0, 17.3, 3.4, 2.6, 'HOU');


insert into arene 
values(101, 'American Airlines Center', 19200, 2001, 'DAL');

insert into arene 
values(102, 'Amway Center', 18846, 2010, 'ORL');

insert into arene 
values(103, 'ATT Center', 18418, 2002, 'SAN');

insert into arene 
values(104, 'TD Garden', 19156, 1995, 'BOS');

insert into arene 
values(105, 'Ball Arena', 19520, 1999, 'DEN');

insert into arene 
values(106, 'Barclays Center', 17732, 2012, 'BRK');

insert into arene 
values(107, 'Capital One Arena', 20356, 1997, 'WAS');

insert into arene 
values(108, 'Chase Center', 18064, 2019, 'GSW');

insert into arene 
values(109, 'Crypto.com Arena', 19068, 1999, 'CLI');

insert into arene 
values(110, 'Crypto.com Arena', 18997, 1999, 'LAL');

insert into arene 
values(111, 'FedExForum	', 17794, 2004, 'MEM');

insert into arene 
values(112, 'Fiserv Forum', 17500, 2018, 'MIL');

insert into arene 
values(113, 'Footprint Center', 17071, 1992, 'PHO');

insert into arene 
values(114, 'FTX Arena', 19600, 1999, 'MIA');

insert into arene 
values(115, 'Gainbridge Fieldhouse', 17923, 1999, 'IND');

insert into arene 
values(116, 'Golden 1 Center', 17583, 2016, 'SAC');

insert into arene 
values(117, 'Little Caesars Arena', 20332, 2017, 'DET');

insert into arene 
values(118, 'Madison Square Garden', 19812, 1968, 'NYK');

insert into arene 
values(119, 'Moda Center', 19441, 1995, 'POR');

insert into arene 
values(120, 'Paycom Center', 18203, 2002, 'OKC');

insert into arene 
values(121, 'Rocket Mortgage FieldHouse', 19432, 1994, 'CLE');

insert into arene 
values(122, 'Scotiabank Arena', 19800, 1999, 'TOR');

insert into arene 
values(123, 'Smoothie King Center', 16867, 1999, 'NOL');

insert into arene 
values(124, 'Spectrum Center', 19077, 2005, 'CHA');

insert into arene 
values(125, 'State Farm Arena', 18118, 1999, 'ATL');

insert into arene 
values(126, 'Target Center', 18978, 1990, 'MIN');

insert into arene 
values(127, 'Toyota Center', 18055, 203, 'HOU');

insert into arene 
values(128, 'United Center', 20917, 1994, 'CHI');

insert into arene 
values(129, 'Vivint Arena', 18306, 1991, 'UTA');

insert into arene 
values(130, 'Wells Fargo Center', 20478, 1996, 'PHI');


insert into Playoffs
values(1, '1st Round', 'MIA', 'ATL', 114, 125, 4, 1);

insert into Playoffs
values(2, '1st Round', 'PHI', 'TOR', 130, 122, 4, 2);

insert into Playoffs
values(3, '1st Round', 'MIL', 'CHI', 112, 128, 4, 1);

insert into Playoffs
values(4, '1st Round', 'BOS', 'BRK', 104, 106, 4, 0);

insert into Playoffs
values(5, '1st Round', 'PHO', 'NOL', 113, 123, 4, 2);

insert into Playoffs
values(6, '1st Round', 'DAL', 'UTA', 101, 129, 4, 2);

insert into Playoffs
values(7, '1st Round', 'GSW', 'DEN', 108, 105, 4, 1);

insert into Playoffs
values(8, '1st Round', 'MEM', 'MIN', 111, 126, 4, 2);

insert into Playoffs
values(9, 'Conference Semifinals', 'MIA', 'PHI', 114, 130, 4, 2);

insert into Playoffs
values(10, 'Conference Semifinals', 'BOS', 'MIL', 104, 112, 4, 3);

insert into Playoffs
values(11, 'Conference Semifinals', 'DAL', 'PHO', 101, 113, 4, 3);

insert into Playoffs
values(12, 'Conference Semifinals', 'GSW', 'MEM', 108, 111, 4, 2);

insert into Playoffs
values(13, 'Conference Finals', 'BOS', 'MIA', 104, 114, 4, 3);

insert into Playoffs
values(14, 'Conference Finals', 'GSW', 'DAL', 108, 101, 4, 1);

insert into Playoffs
values(15, 'Finals', 'GSW', 'BOS', 108, 104, 4, 2);


insert into Televiziuni 
values(201, 'TNT', 2024);

insert into Televiziuni 
values(202, 'ABC', 2024);

insert into Televiziuni 
values(203, 'ESPN', 2027);

insert into Televiziuni 
values(204, 'NBC Sports', 2029);

insert into Televiziuni 
values(205, 'TSN', 2025);

insert into Televiziuni 
values(206, 'NBA TV', 2027);


insert into televizare
values(1, 203);

insert into televizare
values(2, 202);

insert into televizare
values(3, 206);

insert into televizare
values(4, 201);

insert into televizare
values(5, 205);

insert into televizare
values(6, 206);

insert into televizare
values(7, 204);

insert into televizare
values(8, 201);

insert into televizare
values(9, 205);

insert into televizare
values(10, 202);

insert into televizare
values(11, 202);

insert into televizare
values(12, 203);

insert into televizare
values(13, 204);

insert into televizare
values(14, 203);

insert into televizare
values(15, 201);




--6
--Pentru o runda data afisati antrenorii echipelor care si-au castigat meciurile din acea runda 

create or replace procedure p6(the_round Playoffs.runda%TYPE) is
    type t is table of playoffs%rowtype;
    meciuri t:= t();
    
    type t_1 is table of antrenori%rowtype index by pls_integer;
    type t_2 is table of echipe%rowtype index by pls_integer;
    
    antrenori_playoff t_1;
    echipele t_2;
    
    nr number;

Begin
    
    select count(*) into nr
    from playoffs
    where the_round = runda;
    
    meciuri.extend(nr+1);
    
    select*
    bulk collect into meciuri
    from playoffs
    where playoffs.runda = the_round;
    
    select* bulk collect into echipele
    from echipe;
    
    for i in meciuri.first..meciuri.last loop
        for j in echipele.first..echipele.last loop
            if(meciuri(i).id_echipa_1 = echipele(j).id_echipa) 
            then DBMS_OUTPUT.PUT_LINE('Echipa ' || echipele(j).oras || ' ' || echipele(j).nume_echipa || ' este antrenata de: ');
            select * bulk collect into antrenori_playoff
            from antrenori
            where id_echipa = meciuri(i).id_echipa_1;
        
            for k in antrenori_playoff.first..antrenori_playoff.last loop
                DBMS_OUTPUT.PUT_LINE(antrenori_playoff(k).prenume || ' ' || antrenori_playoff(k).nume);
                end loop;
                
            end if;
        
        end loop;
    end loop;

END;
/

BEGIN
p6('Conference Semifinals');
END;
/

 


Cerinta 7
--7
--Pentru o echipa data afisati recordul din sezonul regulat al tuturor echipelor ce au jucat impotriva acesteia in playoffs
create or replace procedure p7(echipa echipe.id_echipa %TYPE) is
    
    cursor c(id_team echipe.id_echipa%TYPE) is 
        select *
        from playoffs
        where playoffs.id_echipa_1 = id_team or playoffs.id_echipa_2 = id_team;
        
     
     cursor c_record(id_team echipe.id_echipa%TYPE) is
        select record_meciuri
        from echipe
        where id_echipa = id_team;
        
     cursor c1(id_team echipe.id_echipa%TYPE) is 
        select oras, nume_echipa
        from echipe
        where id_echipa = id_team;
        
    
    v_record varchar2(50);   
    team echipe.id_echipa%TYPE;
    v_oras echipe.oras%TYPE;
    v_nume echipe.nume_echipa%TYPE;
    
BEGIN
   
    for i in c(echipa) loop
        if i.id_echipa_1 = echipa then
            team := i.id_echipa_2;
            
        else
            team := i.id_echipa_1;
            
        end if;
        
        open c_record(team);
        fetch c_record into v_record;
        
        open c1(team);
        fetch c1 into v_oras, v_nume;
        
        DBMS_OUTPUT.PUT_LINE('Echipa ' || v_oras || ' ' || v_nume || ' a avut recordul ' || v_record || ' in sezonul regulat');
        
        close c_record;
        close c1;
    end loop;

END;
/


BEGIN
p7('GSW');
END;
/

 


Cerinta 8
--8
--Pentru un sponsor dat si o conferinta data faceti o functie care returneaza echipa cu cele mai multe puncte care are acest sponsor si 
--care joaca in aceasta conferinta

create or replace function p8(sponsor sponsori.nume_sponsor%TYPE, conference echipe.conferinta%TYPE) return varchar2 is 
    the_town echipe.nume_echipa%TYPE;
    v_nume_echipa echipe.nume_echipa%TYPE;
    v_puncte echipe.puncte%TYPE;
    v_regiune echipe.conferinta%TYPE;
    maxim number := -1;
    maxim1 number := -1;
    no_sponsored exception;
    mai_multe exception;

BEGIN
    
    for i in(select nume_echipa, puncte, conferinta
            from echipe e, sponsori s, sponsorizare ss
            where s.nume_sponsor = sponsor and e.id_echipa = ss.id_echipa and s.id_sponsor = ss.id_sponsor) loop
            
         v_nume_echipa := i.nume_echipa;
         v_puncte := i.puncte;
         v_regiune := i.conferinta;
         
         if v_puncte > maxim and v_regiune = conference then 
            maxim := v_puncte;
            the_town := v_nume_echipa;
        else
            if v_puncte = maxim and v_regiune = conference then 
                maxim1 := v_puncte;
            end if;
         end if;
         
    end loop;
    
    if maxim = -1 then
        raise no_sponsored;
    end if;
    
    if maxim = maxim1 then
        raise mai_multe;
    end if;
    
    return the_town;
    
Exception
    when no_sponsored then
        return ('Acest sponsor nu sponsorizeaza nicio echipa din aceasta conferinta');
    
    when mai_multe then
        return ('Mai multe echipe cu acest sponsor au punctajul cel mai mare din conferinta dintre echipele cu acest sponsor');
END;
/
 

BEGIN
    DBMS_OUTPUT.PUT_LINE(p8('Google', 'Vest'));
END;
/
 

BEGIN
    DBMS_OUTPUT.PUT_LINE(p8('Linux', 'Vest'));
END;
/
 

BEGIN
    DBMS_OUTPUT.PUT_LINE(p8('Motorola', 'Est'));
END;
/
 


Cerinta 9
--9
--Pentru un numar dat, afisati jucatorii a carui echipa a jucat in prima runda din playoffs pe canalul al carui contract se termina
--in anul transmis ca parametru

create or replace procedure p9(an number) is 
    v_nume_tv televiziuni.nume_tv%TYPE;

BEGIN

    select nume_tv
    into v_nume_tv
    from televiziuni
    where sfarsit_contract = an;

    for i in (select prenume, nume 
             from jucatori j, echipe e, playoffs p, televizare tt, televiziuni t
             where t.id_tv = tt.id_tv and t.nume_tv = v_nume_tv and p.id_meci = tt.id_meci and p.id_meci >= 1 and p.id_meci <= 8
             and (e.id_echipa = p.id_echipa_1 or e.id_echipa = p.id_echipa_2) and j.id_echipa = e.id_echipa) loop
             
             DBMS_OUTPUT.PUT_LINE(i.prenume || ' ' || i.nume);
    end loop;
    
EXCEPTION
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('Niciunei televiziuni nu i se incheie contractul in anul specificat');
        
    when too_many_rows then
        DBMS_OUTPUT.PUT_LINE('Mai multe televiziuni isi incheie contractul in acest an');
        
        
    when others then
        DBMS_OUTPUT.PUT_LINE('Alta eroare!');
END;
/

BEGIN
p9(2025);
END;
/
 


BEGIN
p9(2030);
END;
/
 

BEGIN
p9(2024);
END;
/
 


Cerinta 10
--Creati un trigger care la declansare nu permite modificarea tabelei playoffs 2022 decat cu o zi inaintea inceperii acestora

create or replace trigger trig10
    before insert or update or delete on playoffs
BEGIN
    if(sysdate != '15/APR/2022') then
        RAISE_APPLICATION_ERROR(-20001, 'Nu se poate modifica tabela decat cu o zi inaintea inceperii playoff-urilor');
    end if;
    
END;
/

update playoffs
set victorii_echipa_1 = 3
where id_meci = 1;

 


Cerinta 11
--Creeati un trigger care se declanseaza cand numarul de pe tricoul unui jucator este modificat 
--si este mai mare decat precedentul

create or replace trigger trig11
    before update of numar on jucatori
    for each row
    when (new.numar > old.numar)
    
BEGIN
    RAISE_APPLICATION_ERROR(-20002, 'numarul de pe tricoul unui jucator nu poate fi mai mare decat precedentul');
END;
/

update jucatori
set numar = 23
where prenume = 'LeBron';
 


Cerinta 12
--Creeati un triger care se declanseaza de fiecare data cand se executa o operatie de tip ldd


create table modificari(
    utilizator varchar2(30),
    nume_obiect varchar2(50),
    eveniment varchar2(50));


create or replace trigger trig12
    after create or drop or alter on schema

BEGIN
    insert into modificari
    values(SYS.LOGIN_USER, SYS.DICTIONARY_OBJ_NAME, SYS.DICTIONARY_OBJ_TYPE);

END;
/

create table jucatori_1 as select* from jucatori;

alter table jucatori_1
drop column numar;

drop table jucatori_1;

drop trigger trig12;
select * from modificari;

set serveroutput on;

--13
create or replace package pachet is
    procedure p6(the_round Playoffs.runda%TYPE);
    procedure p7(echipa echipe.id_echipa %TYPE);
    function p8(sponsor sponsori.nume_sponsor%TYPE, conference echipe.conferinta%TYPE) return varchar2;
    procedure p9(an number);
    
END pachet;
/
    
create or replace package body pachet is


procedure p6(the_round Playoffs.runda%TYPE) is
    type t is table of playoffs%rowtype;
    meciuri t:= t();
    
    type t_1 is table of antrenori%rowtype index by pls_integer;
    type t_2 is table of echipe%rowtype index by pls_integer;
    
    antrenori_playoff t_1;
    echipele t_2;
    
    nr number;

Begin
    
    select count(*) into nr
    from playoffs
    where the_round = runda;
    
    meciuri.extend(nr+1);
    
    select*
    bulk collect into meciuri
    from playoffs
    where playoffs.runda = the_round;
    
    select* bulk collect into echipele
    from echipe;
    
    for i in meciuri.first..meciuri.last loop
        for j in echipele.first..echipele.last loop
            if(meciuri(i).id_echipa_1 = echipele(j).id_echipa) 
            then DBMS_OUTPUT.PUT_LINE('Echipa ' || echipele(j).oras || ' ' || echipele(j).nume_echipa || ' este antrenata de: ');
            select * bulk collect into antrenori_playoff
            from antrenori
            where id_echipa = meciuri(i).id_echipa_1;
        
            for k in antrenori_playoff.first..antrenori_playoff.last loop
                DBMS_OUTPUT.PUT_LINE(antrenori_playoff(k).prenume || ' ' || antrenori_playoff(k).nume);
                end loop;
                
            end if;
        
        end loop;
    end loop;

end p6;
    

procedure p7(echipa echipe.id_echipa %TYPE) is
    
    cursor c(id_team echipe.id_echipa%TYPE) is 
        select *
        from playoffs
        where playoffs.id_echipa_1 = id_team or playoffs.id_echipa_2 = id_team;
        
     
     cursor c_record(id_team echipe.id_echipa%TYPE) is
        select record_meciuri
        from echipe
        where id_echipa = id_team;
        
     cursor c1(id_team echipe.id_echipa%TYPE) is 
        select oras, nume_echipa
        from echipe
        where id_echipa = id_team;
        
    
    v_record varchar2(50);   
    team echipe.id_echipa%TYPE;
    v_oras echipe.oras%TYPE;
    v_nume echipe.nume_echipa%TYPE;
    
BEGIN
   
    for i in c(echipa) loop
        if i.id_echipa_1 = echipa then
            team := i.id_echipa_2;
            
        else
            team := i.id_echipa_1;
            
        end if;
        
        open c_record(team);
        fetch c_record into v_record;
        
        open c1(team);
        fetch c1 into v_oras, v_nume;
        
        DBMS_OUTPUT.PUT_LINE('Echipa ' || v_oras || ' ' || v_nume || ' a avut recordul ' || v_record || ' in sezonul regulat');
        
        close c_record;
        close c1;
    end loop;

END p7;    

function p8(sponsor sponsori.nume_sponsor%TYPE, conference echipe.conferinta%TYPE) return varchar2 is 
    the_town echipe.nume_echipa%TYPE;
    v_nume_echipa echipe.nume_echipa%TYPE;
    v_puncte echipe.puncte%TYPE;
    v_regiune echipe.conferinta%TYPE;
    maxim number := -1;
    maxim1 number := -1;
    no_sponsored exception;
    mai_multe exception;

BEGIN
    
    for i in(select nume_echipa, puncte, conferinta
            from echipe e, sponsori s, sponsorizare ss
            where s.nume_sponsor = sponsor and e.id_echipa = ss.id_echipa and s.id_sponsor = ss.id_sponsor) loop
            
         v_nume_echipa := i.nume_echipa;
         v_puncte := i.puncte;
         v_regiune := i.conferinta;
         
         if v_puncte > maxim and v_regiune = conference then 
            maxim := v_puncte;
            the_town := v_nume_echipa;
        else
            if v_puncte = maxim and v_regiune = conference then 
                maxim1 := v_puncte;
            end if;
         end if;
         
    end loop;
    
    if maxim = -1 then
        raise no_sponsored;
    end if;
    
    if maxim = maxim1 then
        raise mai_multe;
    end if;
    
    return the_town;
    
Exception
    when no_sponsored then
        return ('Acest sponsor nu sponsorizeaza nicio echipa din aceasta conferinta');
    
    when mai_multe then
        return ('Mai multe echipe cu acest sponsor au punctajul cel mai mare din conferinta dintre echipele cu acest sponsor');
END p8;

procedure p9(an number) is 
    v_nume_tv televiziuni.nume_tv%TYPE;

BEGIN

    select nume_tv
    into v_nume_tv
    from televiziuni
    where sfarsit_contract = an;

    for i in (select prenume, nume 
             from jucatori j, echipe e, playoffs p, televizare tt, televiziuni t
             where t.id_tv = tt.id_tv and t.nume_tv = v_nume_tv and p.id_meci = tt.id_meci and p.id_meci >= 1 and p.id_meci <= 8
             and (e.id_echipa = p.id_echipa_1 or e.id_echipa = p.id_echipa_2) and j.id_echipa = e.id_echipa) loop
             
             DBMS_OUTPUT.PUT_LINE(i.prenume || ' ' || i.nume);
    end loop;
    
EXCEPTION
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('Niciunei televiziuni nu i se incheie contractul in anul specificat');
        
    when too_many_rows then
        DBMS_OUTPUT.PUT_LINE('Mai multe televiziuni isi incheie contractul in acest an');
        
        
    when others then
        DBMS_OUTPUT.PUT_LINE('Alta eroare!');
END p9;

END pachet;
/

execute pachet.p7('GSW');


--14
--Pentru o echipa data sa se afiseze punctajul din sezonul regulat, numarul de victorii din playoffs
--si cati dintre jucatorii ei au avut peste 3.0 pase pe meci in sezonul regulat

create or replace package echipa is
    type t is table of echipe%Rowtype index by pls_integer;
    echipele t;
    
    type t1 is table of playoffs%Rowtype;
    meciuri t1:= t1();
    
    type t3 is table of jucatori%Rowtype index by pls_integer;
    players t3;
    
    function the_id(the_name echipe.nume_echipa%TYPE) return echipe.id_echipa%TYPE;
    
    function puncte_sezon(the_team echipe.nume_echipa%TYPE) return number;
    
    procedure victorii_playoff(id_team echipe.id_echipa%TYPE);
    
    procedure jucatori_assisturi(id_team echipe.id_echipa%TYPE);
    
    procedure all_toghether(the_name echipe.nume_echipa%TYPE);

END echipa;
/

create or replace package body echipa is 
    function the_id (the_name echipe.nume_echipa%TYPE) return echipe.id_echipa%TYPE is
    team_id echipe.id_echipa%type;
    
    BEGIN
    select id_echipa
    into team_id
    from echipe
    where nume_echipa = the_name;
    
    return team_id;
    
end the_id;

    
    function puncte_sezon(the_team echipe.nume_echipa%TYPE) return number is
    BEGIn
    select * bulk collect into echipele
    from echipe;
    
    for i in echipele.first..echipele.last loop
        if echipele(i).nume_echipa = the_team then
            return echipele(i).puncte;
        end if;
    end loop;
    end puncte_sezon;
    
     
     
     procedure victorii_playoff(id_team echipe.id_echipa%TYPE) is
     victorii number := 0;
     nr number := 0;
     
     BEGIN
     select count(*) into nr
     from playoffs;
     
     meciuri.extend(nr+1);
     
     select * bulk collect into meciuri
     from playoffs;
     
     for i in meciuri.first..meciuri.last loop
        if meciuri(i).id_echipa_1 = id_team then
            victorii:=victorii + 1;
        end if;
    end loop;
    
    DBMS_OUTPUT.PUT_LINE('A castigat ' || victorii || ' in aceste playoff-uri');
end victorii_playoff;


    procedure jucatori_assisturi(id_team echipe.id_echipa%TYPE)
    IS
    nr_jucatori number := 0;
    
    BEGIN
    
    select * bulk collect into players
    from jucatori;
   
    for i in players.first..players.last loop
        if(players(i).id_echipa = id_team and players(i).assisturi > 3.0 ) then
            nr_jucatori:=nr_jucatori + 1;
        end if;
    end loop;
    
    DBMS_OUTPUT.PUT_LINE('Are ' || nr_jucatori || ' cu peste 3 assisturi pe meci in sezonul regulat'); 
    
    end jucatori_assisturi;
    
    
    procedure all_toghether(the_name echipe.nume_echipa%TYPE) is
    points number;
    echipa_id echipe.id_echipa%type;
    
    begin
    
    points := puncte_sezon(the_name);
    echipa_id := the_id(the_name);
    
    DBMS_OUTPUT.PUT_LINE(the_name || ' au avut ' || points || ' in sezonul regulat si:');
    victorii_playoff(echipa_id);
    jucatori_assisturi(echipa_id);
    
    end all_toghether;

end echipa;
/
    
    
execute echipa.all_toghether('Celtics');    
    
     