create table School_info ( Name varchar(15), Email_ID varchar(30), Roll_No bigint, Favorite_Subject varchar(15), Marks bigint);
select * from school_info;
insert into School_info values("Mohanish", "mohanish_bawane1998@gmail.com", 111, "Mathematics", 99), ("Rushabh", "rushabhghadage5@gmail.com", 112, "Computer", 98), ("Ashok", "ashok234@gmail.com", 113, "Biology", 85), ("Mohini", "mohiniparate76@gmail.com", 114, "English", 95), ("Aditya", "adityabagade65@gmail.com", 115, "Sociology", 86), ("Mayuri", "mayuridhokane@gmail.com", 116, "Science", 90), ("Kishor", "Kishormore1997@gmail.com", 117, "History", 96), ("Ganesh", "ganeshkshirsagar78@gmail.com", 118, "Marathi", 87), ("Rohan", "rohan1334@gmail.com", 119, "Hindi", 89), ("Meghana", "meghanasingh45@gmail.com", 120, "English", 91), ("Pradeep", "pradeepbalaji67@gmail.com", 121, "Geometry", 82), ("Jaydeep", "jaydeepshrkhe54@gmail.com", 122, "Economic", 83), ("Raghav", "raghavmishra66@gmail.com", 123, "Biology", 84), ("Magesh", "mageshmanne73@gmail.com", 124, "Ethics", 97), ("jobin", "jobinsanna65@gmail.com", 125, "politics", 75), ("padama", "padamakaur78@gmail.com", 126, "Drawing", 99), ("Manadeep", "manadeepmishra68@gmail.com", 127, "Sanskrut", 97), ("Karthik", "karthikshahu@gmail.com", 128, "Biology", 95), ("Pradeep", "pradeepsaksena83@gmail.com", 129, "Mathematics", 94), ("Ashwini", "Ashwini42@gmail.com", 130, "Science", 99), ("Gayathri", "gayathri@gmail.com", 131, "Hindi", 80), ("Manu", "manudinak99@gmail.com", 132, "History", 89), ("Piyush", "piyushshrivastav44@gmail.com", 132, "Algebra", 100), ("Akshay", "akshay234@gmail.com", 133, "Computer", 99), ("Joseph", "joseph22@gmail.com", 134, "Geometry", 100), ("Priyanka", "priyankadigade25@gmail.com", 135, "Politics", 98), ("Nansi", "nansiumesh67@gmail.com", 136, "Marathi", 85), ("Nandakishor", "nandkishor86@gmail.com", 137, "Biology", 100);
Alter table School_info add column Sr_no int auto_increment  Primary Key;
alter table School_info drop column Sr_no;
ALTER TABLE School_info
ADD CONSTRAINT UNIQUE (Sr_no, name);
Describe table school_info;
ALTER TABLE school_info RENAME COLUMN Name TO First_Name;
Select * from school_info where marks > 80;
select First_Name, Roll_No from school_info where Roll_No = 135;
select First_name from school_info where roll_No in(122, 131, 125, 111, 120);
select Max(marks) from school_info;
select Roll_No from school_info where Roll_No > 100;
Select * from School_info where Marks between 80 and 90 group by First_name;
Select * from School_info where Marks between 80 and 90 order by First_name;
Select count(First_Name) from school_info where marks > 95;
Select Avg(marks) from school_info;
select sum(marks) from school_info;
Delimiter //
create procedure SP_School_Data()
begin
select First_Name, Marks, Favorite_Subject from School_info where Marks > 91;
end //
Delimiter ;

call sp_school_data;
drop procedure sp_school_data;
select First_name from school_info where roll_No not in(122, 131, 125, 111, 120);

Delimiter //
create trigger Tr_Information_data 
after insert on School_Info 
for each row
BEGIN
insert into marks values(null, concat('A row is Inserted in Employee Table at', date_format(now(), '%d-%m-%y %h:%i:%s %p')));
END  //
Delimiter ;
describe table school_info;
show triggers in Sakila;
select * from School_data;








