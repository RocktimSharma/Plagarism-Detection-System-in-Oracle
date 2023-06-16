CREATE OR REPLACE FUNCTION calculate_jaccard(p_value1 IN VARCHAR2, p_value2 IN VARCHAR2)
  RETURN NUMBER
IS
  l_intersection NUMBER := 0;
  l_union NUMBER := 0;
BEGIN
  FOR token IN (SELECT COLUMN_VALUE AS token FROM TABLE(tokenize_text(p_value1)))
  LOOP
    IF INSTR(p_value2, token.token) > 0 THEN
      l_intersection := l_intersection + 1;
    END IF;
  END LOOP;

  
  SELECT COUNT(DISTINCT token) INTO l_union FROM (SELECT COLUMN_VALUE AS token FROM TABLE(tokenize_text(p_value1)) UNION ALL SELECT COLUMN_VALUE AS token FROM TABLE(tokenize_text(p_value2)));


  IF l_union = 0 THEN
    RETURN 0;
  ELSE
    RETURN ((l_intersection / l_union)*100);
  END IF;

END;
/
