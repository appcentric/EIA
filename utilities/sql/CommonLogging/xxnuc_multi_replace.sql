/*******************************************************************************
-- Originating Release :  1.0
-- Process Name        :  xxnuc_multi_replace.sql
-- Author              :  CAPGEMINI
-- Date Created        :  09-JUN-2015
-- Purpose             :  Creating function
--$Header: https://brmkea940.bar.nucorsteel.local:18080/svn/NextGen/branches/RB-PS-1.0.x/soa/utilities/sql/CommonLogging/xxnuc_multi_replace.sql 13556 2016-10-28 12:48:57Z shravan.padigela $
--------------------------------------------------------------------------------
--                       Modification History
--------------------------------------------------------------------------------
-- Version    Name                   Date             Description of Change
-- -------    ---------------------- ---------------  --------------------------
-- 1.0        Sudeep Deshpande       09-JUN-2015      Initial version
-- 2.0        Sudeep Deshpande       01-MAR-2016      EXIT condition modified
*******************************************************************************/

CREATE OR REPLACE FUNCTION xxnuc_multi_replace (p_str1    IN VARCHAR2
                                              , p_token1  IN VARCHAR2
                                              , p_token2  IN VARCHAR2
                                              , p_token3  IN VARCHAR2
                                              , p_token4  IN VARCHAR2
                                              , p_token5  IN VARCHAR2
                                              , p_token6  IN VARCHAR2
                                              , p_token7  IN VARCHAR2
                                              , p_token8  IN VARCHAR2
                                              , p_token9  IN VARCHAR2
                                              , p_token10 IN VARCHAR2)
RETURN VARCHAR2
IS
  str1            VARCHAR2 (4000);
  chr1            VARCHAR2 (10)  := '!';
  new_str         VARCHAR2 (4000);
  new_str1        VARCHAR2 (4000);
  str_start_pos   NUMBER;
  chr_pos         NUMBER;
  str2            VARCHAR2 (4000);
  l               NUMBER;
  l_cnt           NUMBER;
  p1              VARCHAR2 (999);
  p2              VARCHAR2 (999);
  p3              VARCHAR2 (999);
  p4              VARCHAR2 (999);
  p5              VARCHAR2 (999);
  p6              VARCHAR2 (999);
  p7              VARCHAR2 (999);
  p8              VARCHAR2 (999);
  p9              VARCHAR2 (999);
  p10             VARCHAR2 (999);
BEGIN
--
  str1 := p_str1;
  p1   := p_token1;
  p2   := p_token2;
  p3   := p_token3;
  p4   := p_token4;
  p5   := p_token5;
  p6   := p_token6;
  p7   := p_token7;
  p8   := p_token8;
  p9   := p_token9;
  p10  := p_token10;
  --
  str_start_pos := 1;
  l := LENGTH (str1);
  l_cnt := 1;
  str2 := 'a';
  LOOP
  --
    EXIT WHEN NVL (l, 0) <= 0;
    chr_pos := INSTR (str1, chr1);
    new_str1 := SUBSTR (str1, 1, chr_pos - 1);
    str_start_pos := chr_pos + 1;

    SELECT DECODE (l_cnt, 1, p1, 2, p2, 3, p3, 4, p4, 5, p5
                        , 6, p6, 7, p7, 8, p8, 9, p9, 10, p10)
      INTO str2
      FROM DUAL
    ;

    new_str := new_str|| '' ||new_str1|| '' ||str2;

    --DBMS_OUTPUT.put_line (new_str);
    str1 := SUBSTR (str1, str_start_pos);
    l := LENGTH (str1);
      
    IF str2 is NULL AND l_cnt > 1 THEN                --2.0 l_cnt CONDITION added
      new_str := new_str|| '' ||new_str1|| '' ||str1;
      EXIT;
    END IF;
    l_cnt := l_cnt + 1;
  --
  END LOOP;
  --DBMS_OUTPUT.put_line ('OuTsIdE - ' || new_str);
  RETURN (new_str);
--
EXCEPTION
--
  WHEN OTHERS THEN
    NULL;
--
END xxnuc_multi_replace;
/

show error;
