
@echo off

set file_path=%~f0
set file_path=%file_path:~0,-4%

set logfile="%file_path%_log.txt"


echo START: %DATE:~3,10% %time:~0,8% 1> %logfile%
echo. 1>> %logfile%
CALL .venv\Scripts\activate.bat 1>> %logfile% 2>&1 
python "%file_path%.py" 1>> %logfile% 2>&1 
echo. 1>> %logfile%
echo END: %DATE:~3,10% %time:~0,8% 1>> %logfile%




