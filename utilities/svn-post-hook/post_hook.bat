SET REPOS=%1
SET REV=%2
SET CSCRIPT=%windir%\system32\cscript.exe
SET JSSCRIPT=C:\Repositories\post-commit-hook-jenkins.js
SET JOBNAME=EIAHome
SET JENKINS=http://spdecsoasvn.sps.nucorsteel.local:8080/
SET TOKEN=nucoradmin
"%CSCRIPT%" "%JSSCRIPT%" %JENKINS% "%JOBNAME%" "%TOKEN%"