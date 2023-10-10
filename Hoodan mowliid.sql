CREATE TABLE student(
Stu_ID int primary key,
Stu_Fnme varchar(250),
Stu_Lnane varchar(250),
Stu_Phone varchar(250),
stu_Address varchar(250),
datas date,
)


CREATE TABLE courses(
Co_ID int primary key,
Co_Name varchar(250),
Co_Techer varchar(250),

--relationship

St_Id Int,

foreign key (st_Id) references student(Stu_ID)

)




CREATE TABLE teacher(
Te_ID int primary key,
Te_Name varchar(250),
Te_Courses varchar(250),
Te_Addreaa varchar(250),
Te_Phone varchar(250),



--relationship

Co Int,

foreign key (Co) references courses(Co_ID)

)


create table login (
username varchar(20),
password varchar(20)
)

create table empolyee (
em_ID int primary key,
em_Name varchar(50),
em_Address varchar(50),
em_Phone varchar(50),
Work_type varchar(50),
em_Shift varchar(20),
em_Salary int
)

create table salary(
sal_ID int primary key,
sal_Amount int,
datas date,
sal_Method int ,

--relationship

Em_ID Int,

foreign key (Em_ID) references empolyee(em_ID),

--relationship

TE_Id Int,

foreign key (TE_Id) references teacher(Te_ID)


)

create table fee (
fee_id int primary key,
fee_method varchar(20) ,
fee_amount int,
datas date,


--relationship

St_Id Int,

foreign key (st_Id) references student(Stu_ID)

)