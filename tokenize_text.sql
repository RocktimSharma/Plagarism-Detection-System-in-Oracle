CREATE OR REPLACE FUNCTION tokenize_text(p_text IN VARCHAR2)
  RETURN SYS.ODCIVARCHAR2LIST PIPELINED
IS
  l_token VARCHAR2(500);
BEGIN
  FOR t IN (SELECT REGEXP_SUBSTR(p_text, '[^[:space:]]+', 1, LEVEL) AS token
            FROM dual
            CONNECT BY REGEXP_SUBSTR(p_text, '[^[:space:]]+', 1, LEVEL) IS NOT NULL)
  LOOP
    PIPE ROW (t.token);
  END LOOP;
  
  RETURN;
END;
/
