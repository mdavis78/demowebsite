CREATE OR REPLACE CONS_EXISTS (P_CONS_ID IN NUMBER)
RETURN VARCHAR2
IS

V_CONS_ID NUMBER(8) := P_CONS_ID;
LN_COUNT NUMBER(8) := 0;
LV_RETURN_MSG VARCHAR2(200);

BEGIN

SELECT COUNT(*)
INTO LN_COUNT
FROM DUAL 
WHERE CONS_ID = V_CONS_ID;

IF LN_COUNT > 0 THEN
  LV_RETURN_MSG := 'Yes';
ELSE
  LV_RETURN_MSG := 'No';
END IF;

RETURN LV_RETURN_MSG;

EXCEPTION
  WHEN OTHERS THEN
    RETURN 'ERROR';
END
/
  
