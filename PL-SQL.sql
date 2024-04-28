create table emp (
    eno number(4),
    name char(20),
    job char(20),
    sal number(8)
)

insert into emp values (1 , 'YASH', 'developer',9000000);
insert into emp values (2 ,'rat','developer',390322);

select * from emp; 
/*
declare 
 e emp.eno%type;
 n emp.name%type;
 j emp.job%type;
 s emp.sal%type;
begin
select eno,name into e,n from emp where eno=1;
select job,sal into j,s from emp where eno=1;
dbms_output.put_line('Eno is '|| e);
dbms_output.put_line('welcome to plsql');
dbms_output.put_line('welcome '|| n );
dbms_output.put_line('your a '|| j);
dbms_output.put_line('sal is '|| s);
end; USING %TYPE */

declare 
rec emp%rowtype ;
begin
select* into rec from emp where eno=1;
dbms_output.put_line('Eno is '|| rec.eno);
dbms_output.put_line('welcome to plsql');
dbms_output.put_line('welcome '|| rec.name );
dbms_output.put_line('your A '|| rec.job);
dbms_output.put_line('sal is '|| rec.sal);
end ;


declare
    A number := 1;
    B NUMBER := 3;
BEGIN 
IF A=B THEN
    dbms_output.put_line('both are equal');

else
    if A>B THEN
    dbms_output.put_line('A IS GREATER ');
   else
    dbms_output.put_line('B IS GREATER');
END IF;
END IF ;
END;



DECLARE 
var1 NUMBER := 1;
N NUMBER := 10;
BEGIN
LOOP
dbms_output.put_line(var1);
var1:= var1+1 ;
exit when var1>n;
END LOOP;
END;

DECLARE 
var1 NUMBER := 1;
N NUMBER := 10;
BEGIN 
WHILE var1<=15 loop
dbms_output.put_line(var1);
END LOOP ;
END;

DECLARE 
TABLE_OF NUMBER :=8;
RESULT NUMBER ;
BEGIN 
WHILE C IN 1..10 LOOP
RESULT = TABLE_OF * C ;
dbms_output.put_line(TABLE_OF || '*' || C ||' = '|| RESULT);
END LOOP ; 
END;
