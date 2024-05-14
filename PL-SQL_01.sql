/* 1) Write a program to declare 3 variables with datatype as below and display their values.
 Number
 Varchar
 Date */

DECLARE 
age number := 10 ;
name varchar(20) := 'Yash' ;
dob date := TO_DATE ('2-june-2004', 'dd-mm-yy');

BEGIN 
DBMS_OUTPUT.PUT_LINE('Your age is '|| age);
DBMS_OUTPUT.PUT_LINE('Your Name is ' || name);
DBMS_OUTPUT.PUT_LINE('Your dob is ' || dob);
end ;


/*2) Write a program to check for a salary value and display the output based on the salary
range (use IF condition) */

DECLARE 
salary number := 10000 ;

BEGIN
IF salary <=50000 then 
DBMS_OUTPUT.PUT_LINE('SORRY , U CANT GET PROMOTED');
ELSE IF salary <=100000 then
dbms_output.put_line('you can get promotion');
end if ;
end if ;
end ;


/*3) Write a program using the same conditions as in the #1 question, but use CASE
condition instead of IF condition. */

DECLARE 
salary NUMBER := 75000;

BEGIN
CASE 
WHEN salary >= 100000 then 
DBMS_OUTPUT.PUT_LINE('GRADE A');
WHEN salary >=75000 then 
DBMS_OUTPUT.PUT_LINE('GRADE B');
WHEN salary >= 50000 then 
DBMS_OUTPUT.PUT_LINE('GRADE C');
WHEN salary >= 25000 then 
DBMS_OUTPUT.PUT_LINE('GRADE D') ;
WHEN salary <= 25000 then 
DBMS_OUTPUT.PUT_LINE('GRADE E') ;
END CASE;
END;

/*4) Write a program to display values from 200 to 300 using a WHILE loop */

DECLARE
num1 NUMBER := 200;
BEGIN
WHILE num1<=300 
LOOP
DBMS_OUTPUT.PUT_LINE(num1) ;
num1 := num1+1 ;
end LOOP ;
END ;

/*5) Write a program to display values from 200 to 300 using a FOR loop.*/
DECLARE 
num1 number  := 200 ;
BEGIN 
FOR num1 IN 200..300
LOOP
DBMS_OUTPUT.PUT_LINE(num1);
END LOOP;
END ;

/*6) Write a program to perform below steps
 Declare a variable
 If the variable value is 1 then display values from 300 to 400 using a WHILE loop
 If the variable value is 2 then display values from 400 to 800 using a FOR loop
 If the variable value is 3 then just display “wrong choice” */

DECLARE 
num1 number := 3;
x number := 300 ;
y number ;
BEGIN 
IF num1 = 1 THEN
 WHILE x <=400 LOOP
 DBMS_OUTPUT.PUT_LINE(x);
 x :=x+1 ;
end LOOP ;
ELSE IF num1 =2 THEN
FOR j IN 400..800 LOOP
DBMS_OUTPUT.PUT_LINE(j) ;
END LOOP;
ELSE IF num1= 3 then 
    DBMS_OUTPUT.PUT_LINE('WRONG CHOICE');
END IF ;
END IF ;
END IF;
END;
