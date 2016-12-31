@echo off

:: In order to delete the folders:
for /F %%a in (.cvsignore) do rmdir /S /Q %%a

:: In order to delete the files:
for /F %%a in (.cvsignore) do del /F /Q %%a

:: In order to delete the hidden files:
for /F %%a in (.cvsignore) do del /F /Q /A:H %%a

pushd Tests
call clean.bat
popd
