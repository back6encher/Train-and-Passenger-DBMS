-- create database train_system


create table train(train_id int primary key,
train_name varchar(55),
source_location varchar(55),
destination_location varchar(55),
departuredate date,
departuretime time);

insert into train values(1,'train1','karachi','sialkot','01-20-2017','6:15:00 pm');
insert into train values(2,'train2','karachi','lahore','01-22-2017','6:15:00 pm');
insert into train values(3,'train3','karachi','fsd','01-23-2017','3:15:00 pm');
insert into train values(4,'train4','karachi','multan','01-24-2017','2:15:00 pm');
insert into train values(5,'train5','karachi','rawalpindi','01-25-2017','4:15:00 pm');

create table passenger (train_id int,
passenger_id varchar(55) primary key,
pname varchar(55),
seat_no varchar(5),
ticket_no varchar(50),
fare int);

insert into passenger values(1,'p1','ali','s1','t1',400);
insert into passenger values(2,'p2','chirag','s2','t2',600);
insert into passenger values(3,'p3','sahil','s3','t3',500);
insert into passenger values(2,'p4','himanshu','s4','t4',400);
insert into passenger values(1,'p5','abhishek','s5','t5',200);
insert into passenger values(4,'p6','agrawal','s6','t6',800);
insert into passenger values(5,'p7','lokesh','s7','t7',900);
insert into passenger values(2,'p8','devesh','s8','t8',700);
insert into passenger values(3,'p9','akshay','s9','t9',300);
insert into passenger values(2,'p10','sakshi','s10','t10',500);
insert into passenger values(4,'p11','nora','s11','t11',1000);
insert into passenger values(5,'p12','kareena','s12','t12',690);
insert into passenger values(1,'p13','amardeep','s13','t13',100);

-- select * from passenger;

-- fetching data from this database system like irctc,ixigo,etc does while filtering specific category

-- select train_name from train where departuretime between'3:00:00pm' and '6:00:00pm' and departuredate 
-- between '01-21-2017' and '01-25-2017';

-- select train_id,fare from passenger where fare>300 and fare<1000 order by fare;


-- select train.train_id,passenger.ticket_no
-- from train,passenger
-- where train.train_id=passenger.train_id order by train_id;

select train_id,sum(fare) as 'fare earned by each train' from passenger group by train_id order
by sum(fare);







