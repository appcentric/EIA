/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_token.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating procedure
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_token.sql 13549 2016-10-28 11:11:04Z shravan.padigela $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
*******************************************************************************/

CREATE OR REPLACE PROCEDURE xxnuc_token (p_string  IN  VARCHAR2
                                       , p_token1  OUT VARCHAR2
                                       , p_token2  OUT VARCHAR2
                                       , p_token3  OUT VARCHAR2
                                       , p_token4  OUT VARCHAR2
                                       , p_token5  OUT VARCHAR2
                                       , p_token6  OUT VARCHAR2
                                       , p_token7  OUT VARCHAR2
                                       , p_token8  OUT VARCHAR2
                                       , p_token9  OUT VARCHAR2
                                       , p_token10 OUT VARCHAR2)
IS
  l_str     VARCHAR (4000);
  rem_strng VARCHAR(100);
  l_len     NUMBER;
  l_pos     NUMBER;
BEGIN
  l_str := p_string;
  l_len := LENGTH (l_str);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token1 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token2 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token3 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token4 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token5 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token6 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token7 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token8 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  IF l_pos = 0 THEN
    l_pos := l_len + 1;
  END IF;
  p_token9 := SUBSTR (l_str, 1, l_pos -1);
  l_str := SUBSTR (l_str, l_pos+1, l_len);
  --
  l_pos := INSTR (l_str, ',');
  p_token10 := SUBSTR (l_str, l_pos+1, l_len);
--
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END xxnuc_token;
/

show error;
