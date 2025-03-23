--Write a program to declare 3 variables with datatype as below and display their values. 
--? Number 
--? Varchar 
--? Date

DECLARE 
    VAR_NUMBER NUMBER:=0;
    VAR_CHAR VARCHAR2(10):='Aakash';
    VAR_DATE DATE:='11-11-2000';
BEGIN
    DBMS_OUTPUT.PUT_LINE(VAR_DATE);
END;
/

--2) Write a program to check for a salary value and display the output based on the salary 
--range (use IF condition) 
--? if salary is greater than 100000 then display the output as 'Grade A' 
--? if salary is between 50000 and 100000 then display the output as 'Grade B' 
--? if salary is between 25000 and 50000 then display the output as 'Grade C' 
--? if salary is between 10000 and 25000 then display the output as 'Grade D' 
--? otherwise  display the output as 'Grade E'     


DECLARE
    SALARY NUMBER:= 500000;

BEGIN
    
    IF SALARY > 100000 
    THEN 
        DBMS_OUTPUT.PUT_LINE('Grade A');
        
    ELSIF SALARY > 50000 AND SALARY < 100000
    THEN
        DBMS_OUTPUT.PUT_LINE('Grade B');
        
    ELSIF SALARY > 25000 AND SALARY < 50000
    THEN 
        DBMS_OUTPUT.PUT_LINE('Grade C');
        
    ELSIF SALARY > 10000 AND SALARY < 25000
    THEN 
        DBMS_OUTPUT.PUT_LINE('Grade D');
        
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade E');
    
    END IF;
END;
/
--3) Write a program using the same conditions as in the #1 question, but use CASE 
--condition instead of IF condition. 


DECLARE
    SALARY NUMBER:= 500000;

BEGIN
    CASE
    WHEN SALARY > 100000 
    THEN 
        DBMS_OUTPUT.PUT_LINE('Grade A');
        
    WHEN SALARY > 50000 AND SALARY < 100000
    THEN
        DBMS_OUTPUT.PUT_LINE('Grade B');
        
    WHEN SALARY > 25000 AND SALARY < 50000
    THEN 
        DBMS_OUTPUT.PUT_LINE('Grade C');
        
    WHEN SALARY > 10000 AND SALARY < 25000
    THEN 
        DBMS_OUTPUT.PUT_LINE('Grade D');
        
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade E');
    
    END CASE;
END;
/
--4) Write a program to display values from 200 to 300 using a WHILE loop. 


DECLARE 
    DISPLAY_NUM NUMBER:=200;
BEGIN 
    
    WHILE DISPLAY_NUM <= 300
    LOOP
        DBMS_OUTPUT.PUT_LINE(DISPLAY_NUM);
        
        DISPLAY_NUM := DISPLAY_NUM + 1;
        
    END LOOP;

END;
/

--5) Write a program to display values from 200 to 300 using a FOR loop. 

DECLARE
--    DISPLAY_NUM NUMBER := 200;

BEGIN
    
    FOR DISPLAY_NUM IN 200..300
    LOOP
    DBMS_OUTPUT.PUT_LINE(DISPLAY_NUM);
    END LOOP;

END;
/

--
--6) Write a program to perform below steps 
--? Declare a variable  
--? If the variable value is 1 then display values from 300 to 400 using a WHILE loop 
--? If the variable value is 2 then display values from 400 to 800 using a FOR loop 
--? If the variable value is 3 then just display “wrong choice”


DECLARE 
    NUM_VAR NUMBER:=3;
    CTRL NUMBER := 300;
BEGIN
    
    CASE 
    WHEN NUM_VAR = 1 THEN
        
        WHILE CTRL < 401
        LOOP
            DBMS_OUTPUT.PUT_LINE(CTRL);
            CTRL := CTRL + 1;
        END LOOP;
        
    WHEN NUM_VAR = 2 THEN
    
        FOR i IN 400..800
        LOOP
            DBMS_OUTPUT.PUT_LINE(i);
        
        END LOOP;
        
    WHEN NUM_VAR = 3 THEN
        
        DBMS_OUTPUT.PUT_LINE('wrong choice');

    END CASE;
END;