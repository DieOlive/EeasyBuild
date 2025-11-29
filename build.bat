@echo off
set "MYDIR=%CD%"

:: Get parent folder path
for %%a in ("%MYDIR%\..") do set "PARENT=%%~fa"

:: Extract folder name of parent
for %%f in ("%PARENT%\.") do set "myfolder=%%~nxf"

echo Parent folder name: %myfolder%

:: Build with CMake
cmake --build .

:: Run executable if it exists
if exist "%myfolder%.exe" (
    "%myfolder%.exe"
) else (
    echo Executable "%myfolder%.exe" not found.
)
