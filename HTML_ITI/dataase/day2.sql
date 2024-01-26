create database lab1 template template1;
create table students_to(std_id int,track_id int, name char(40),phoneNumber int, contact_info infro_info,primary key (std_id), foreign key (track_id) references track(track_id));

create table track(track_id int , name char(40), primary key(track_id));

 create table subjects(sub_id int, name char(40),describtion text , max_score int ,track_id int,primary key(sub_id),foreign key (track_id) references track(track_id));

create table infro_info(
    email varchar(100), addr varchar(100) );

create table score(sub_id int ,
 std_id int,e_date date , score_exam int,
 foreign key(sub_id) references subjects(sub_id),
 foreign key(std_id)references subjects(sub_id));





 
