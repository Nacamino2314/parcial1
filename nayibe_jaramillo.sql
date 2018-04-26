--1
CREATE OR REPLACE FUNCTION function_1 (a in number, b in number, c in Number) 
return number is 
Concatenacion number := 0;
BEGIN
Concatenacion :=a*b;
    if(b>=c) then
        RETURN Concatenacion ||'/martinez';
    else
        RETURN Concatenacion||'/andres';
    end if;   
end;

BEGIN
DBMS_OUTPUT.PUT_LINE(function_1(1,2,3));
END;


--2

CREATE OR REPLACE FUNCTION function_2 (n POSITIVE) RETURN INTEGER IS
BEGIN
    IF (n = 1) OR (n = 2) THEN 
        RETURN 1;
    ELSE
        RETURN function_2(n - 1) + function_2(n - 2);
    END IF;
END function_2;

SELECT fib(1), fib(2), fib(3), fib(4), fib(5) FROM dual;


declare
    first number:=0;
    second number:=1;
    third number;
    n number:=&n;
    i number;
 
begin
    dbms_output.put_line('Fibonacci series is:');
    dbms_output.put_line(first);
    dbms_output.put_line(second);    
 
    for i in 2..n
    loop
        third:=first+second;
        first:=second;
        second:=third;
        dbms_output.put_line(third);
    end loop;
end;
/





