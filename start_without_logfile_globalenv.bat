
@echo off

set file_path=%~f0
set file_path=%file_path:~0,-4%


python "%file_path%.py"





