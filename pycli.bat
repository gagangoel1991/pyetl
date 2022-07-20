@echo off
set fp=%1
set fp=%fp:"=%
call set "chr=%fp:~1,1%"

if "%chr%"==":" (goto elsepart) else (goto ifpart)

:ifpart
set "fp=%cd%\%1"
set fp=%fp:"=%

:elsepart

for /f "tokens=1-15 delims=\" %%a in ("%fp%") do (
if %%a==Tests set op=%%a
if %%b==Tests set op=%%a/%%b
if %%c==Tests set op=%%a/%%b/%%c
if %%d==Tests set op=%%a/%%b/%%c/%%d
if %%e==Tests set op=%%a/%%b/%%c/%%d/%%e
if %%f==Tests set op=%%a/%%b/%%c/%%d/%%e/%%f
if %%g==Tests set op=%%a/%%b/%%c/%%d/%%e/%%f/%%g
if %%h==Tests set op=%%a/%%b/%%c/%%d/%%e/%%f/%%g/%%h
if %%i==Tests set op=%%a/%%b/%%c/%%d/%%e/%%f/%%g/%%h/%%i
if %%j==Tests set op=%%a/%%b/%%c/%%d/%%e/%%f/%%g/%%h/%%i/%%j
if %%k==Tests set op=%%a/%%b/%%c/%%d/%%e/%%f/%%g/%%h/%%i/%%j/%%k
)

set PYTHONPATH=%op%;%PYTHONPATH%

python %1