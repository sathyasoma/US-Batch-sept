

create database may29;

use may29;


show tables;


create table employee(empid int(10),empname varchar(20),empsalary int);

desc employee;


select * from employee;


alter table employee add column empadd varchar(30);

alter table employee modify empadd varchar(50);

alter table employee rename column empsalary to empsal;

alter table employee drop column empadd;


rename table employee to emp;

select * from employee;

drop table emp;

show tables;


insert into employee values(123,'swetha',null);

insert into employee(empid,empsalary) values(145,12540);

update employee set empsalary=16000 where empid=145;


delete from employee where empid=123;

delete from employee;


select empid,empsalary,empname from employee;

select * from employee;


create table student(sid int,sname varchar(20),smarks int);


show tables;

desc student;


set autocommit=0;
insert into student values(123,'bahubali',4500);
insert into student values(124,'devasena',54500);
insert into student values(125,'arundathi',48500);
insert into student values(126,'kanchana',24500);

commit;

select * from student;

delete from student where sid=123;

rollback;

truncate table student;

drop table student;

delete from student;

update student set sname='avatar' where sid=126;


create table emp(eid int not null,ename varchar(10), esal int);

desc emp;

insert into emp values(120,'swetha',4500);
select * from emp1;
insert into emp values(145,'swetha',4500);
delete from emp where ename='swetha';
alter table emp add constraint unique(ename);

insert into emp values(145,'swetha',4500);
insert into emp values(190,'swetha',8900);
create table emp1(eid int not null,ename varchar(10) unique, esal int check(esal<10000));

insert into emp1 values(123,'maduvan',2000);
insert into emp1 values(456,'bahu',8000);

create table emp2(eid int primary key,ename varchar(10) not null, esal int check(esal<20000));

insert into emp2 values(100,'keerthi',7520);
insert into emp2 values(101,'sathya',27520);




show tables;


drop table emp;


CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);

CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);
desc emp;
desc dept;

INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');


select * from emp;

select * from dept;


select empno,ename,job,sal,loc,dname from emp,dept;

select empno,ename,job,sal,loc,dname from emp join dept using(deptno) where deptno=20;

select e.empno,e.ename,e.job,e.sal,d.loc,d.dname from emp e join dept d  where e.deptno=d.deptno;

//left out join
select e.empno,e.ename,e.job,e.sal,d.loc,d.dname from emp e left join dept d  on e.deptno=d.deptno;

//right outer join

select e.empno,e.ename,e.job,e.sal,d.loc,d.dname from emp e right join dept d  on e.deptno=d.deptno;









show tables;
desc sathya;

select * from sathya;


desc product;


select * from product;

select * from welcomeemployee;

desc jack;

select * from employee;
select * from jack;











