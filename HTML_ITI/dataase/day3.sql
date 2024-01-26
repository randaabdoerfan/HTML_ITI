--1
create type gender as Enum('male','female');
alter table students_to add gender gender;
--2
alter table students_to add brith_date date;
--3
alter table students_to drop name;
alter table students_to add fname varchar(20);
alter table students_to add lname varchar(20);
--4
alter table students_to drop contact_info;
alter table students_to add contact_info infro_info;
--5

--6
alter table students_to add id1 int not null;
alter table students_to add foreign key (id1) references track(track_id);
alter table students_to add foreign key (id1) references subjects(sub_id);
--7
insert into students_to(std_id,track_id,phoneNumber,gender,fname,lname,contact_info,id1) values (2,1,01254657624,'male', 'erfan' , 'hany' ,row(0,'15street','ffff@gmail.com'),1);
insert into students_to(std_id,track_id,phoneNumber,gender,fname,lname,contact_info,id1) values (3,1,01254367624,'female', 'rana' , 'hany' ,row(0,'15street','ffff@gmail.com'),1);
insert into students_to(std_id,track_id,phoneNumber,gender,fname,lname,contact_info,id1) values (4,1,01287057624,'female', 'roka' , 'hany' ,row(0,'15street','ffff@gmail.com'),1);
insert into students_to(std_id,track_id,phoneNumber,gender,fname,lname,contact_info,id1) values (5,1,01287057624,'male', 'ziko' , 'hany' ,row(0,'15street','ffff@gmail.com'),1);
insert into track(track_id,name) values(1,'track1');
insert into track(track_id,name) values(3,'track3');
insert into subjects(sub_id, name , describtion, max_score ) values(1,'ai','tree of ai',100);
insert into subjects(sub_id, name , describtion, max_score ) values(2,'html','tree of ai',109);
insert into subjects(sub_id, name , describtion, max_score ) values(3,'django','tree of ai',1000);
insert into students_to(std_id,track_id,phoneNumber,brith_date ,gender,fname,lname ,id1) values(6,2,13566586,'1992-10-01','male','kiko','last',1);
insert into students_to(std_id,track_id,phoneNumber,brith_date ,gender,fname,lname,id1) values(7,3,6874454,'1992-10-01','male','ronaldo','last',1);
insert into students_to(std_id,track_id,phoneNumber,brith_date ,gender,fname,lname,id1) values(8,4,44468848,'1992-10-01','female','star','first',1);
insert into students_to(std_id,track_id,phoneNumber,brith_date ,gender,fname,lname,id1) values(9,5,6486666489,'1992-10-01','female','moon','last',1);
--8
select * from students_to;
select * from track;
select * from subjects;
--9
select * from students_to where gender='male';
--10
select count(gender='female') from students_to;
--11
select * from students_to where brith_date='1992-10-01';
--12
select * from students_to where gender='male' and brith_date = '1992-10-01';
--13
select max_score,name from subjects;
--14
select max(max_score) from subjects;
--15
select * from students_to where fname like '%A';
--16
select  * from students_to where fname='mohammed';
--17
select count(gender) from students_to;
--18
select fname from students_to group by fname having count(fname)>2;
select lname from students_to group by lname having count(lname)>2;
--19
select students_to.fname,students_to.lname, students_to.std_id ,track.name from students_to , track where track.track_id=students_to.std_id;
--20
select students_to.fname,students_to.lname, students_to.std_id ,subjects.name from students_to , subjects where subjects.sub_id=students_to.std_id;0