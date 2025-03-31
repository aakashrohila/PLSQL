--1) Create an Associative array of character datatype and index it by number and perform 
--the below operations. 
--? Insert 10 values into this array 
--? Delete 3rd element from the array 
--? Delete 7th element from the array 
--? Display the data from the array 

DECLARE
    TYPE NUMBER_TYPE IS TABLE OF VARCHAR2(100) INDEX BY BINARY_INTEGER;
    
    NUMBER_VAR NUMBER_TYPE;
    
    V_IDX NUMBER;

BEGIN
    
    NUMBER_VAR(1) := 'Pokemon';
    NUMBER_VAR(2) := 'Doraemon';
    NUMBER_VAR(3) := 'Schinchan';
    NUMBER_VAR(4) := 'Kiteretsu';
    NUMBER_VAR(5) := 'Oswald';
    NUMBER_VAR(6) := 'Power Ranger';
    NUMBER_VAR(7) := 'Ninja Hattori';
    NUMBER_VAR(8) := 'Ben 10';
    NUMBER_VAR(9) := 'Art Attack';
    NUMBER_VAR(10) := 'Beyblade';

    NUMBER_VAR.DELETE(3);
    
    NUMBER_VAR.DELETE(7);

    V_IDX := NUMBER_VAR.FIRST;
    
    WHILE V_IDX IS NOT NULL
    LOOP
    
    DBMS_OUTPUT.PUT_LINE('Number: ' || V_IDX || ' '|| NUMBER_VAR(V_IDX));
    
    V_IDX := NUMBER_VAR.NEXT(V_IDX);
    
    END LOOP;

END;
/



--2) Create a Nested Table array of character datatype and perform the below operations. 
--? Insert 10 values into this array 
--? Delete 3rd element from the array 
--? Delete 7th element from the array 
--? Display the data from the array 

DECLARE 
    TYPE NUMBER_COLLECTION IS TABLE OF VARCHAR(100);
    
    NUMBER_VAR NUMBER_COLLECTION := NUMBER_COLLECTION('Pokemon','Doraemon', 'Kiteretsu',
    'Oswald', 'Power Ranger', 'Ben 10', 'Art Attack', 'Beyblade');
    V_IDX NUMBER;
    
BEGIN
    
    V_IDX := NUMBER_VAR.FIRST;
    
    NUMBER_VAR.DELETE(3);
    
    NUMBER_VAR.DELETE(7);
    
    WHILE V_IDX IS NOT NULL
    LOOP
    
    DBMS_OUTPUT.PUT_LINE(V_IDX ||' ' || NUMBER_VAR(V_IDX));
    
    V_IDX := NUMBER_VAR.NEXT(V_IDX);
    
    END LOOP;

END;
/

--
--3) Create a VARRAY array of character datatype which holds 10 values and perform the 
--below operations. 
--? Insert 10 values into this array 
--? Display the data from the array

DECLARE
    TYPE NUMBER_COLLECTION IS VARRAY(11) OF VARCHAR2(100);
    
    NUMBER_VAR NUMBER_COLLECTION := NUMBER_COLLECTION();

    V_IDX NUMBER;

BEGIN
    
    NUMBER_VAR.EXTEND(11);
    
    NUMBER_VAR(1) := 'Pokemon';
    NUMBER_VAR(2) := 'Doraemon';
    NUMBER_VAR(3) := 'Schinchan';
    NUMBER_VAR(4) := 'Kiteretsu';
    NUMBER_VAR(5) := 'Oswald';
    NUMBER_VAR(6) := 'Power Ranger';
    NUMBER_VAR(7) := 'Ninja Hattori';
    NUMBER_VAR(8) := 'Ben 10';
    NUMBER_VAR(9) := 'Art Attack';
    NUMBER_VAR(10) := 'Beyblade';

   V_IDX := NUMBER_VAR.FIRST;
    
    WHILE V_IDX IS NOT NULL
    LOOP
    
    DBMS_OUTPUT.PUT_LINE('Number: ' || V_IDX || ' '|| NUMBER_VAR(V_IDX));
    
    V_IDX := NUMBER_VAR.NEXT(V_IDX);
    
    END LOOP;

END;
/