rem @echo off
set curdir=d:\all\projects\
set curdirdiskenc=d:\all\diskenc\

set rarexe="C:\Program Files\WinRAR\rar.exe"
set dt=%date:/=_%
set dt=%dt: =_%
set tm=%time::=_%
set tm=%tm:.=_%
set tm=%tm: =_%
set filename=%dt%_%tm%

%rarexe% -hpKrishna@#1988 a -r  "%filename%.bin" "%curdir%*.txt" 		"%curdir%*.bat" 		"%curdir%*.cpp" 		"%curdir%*.c" 			"%curdir%*.h" 			"%curdir%*.rc" 			"%curdir%*.sql" 		"%curdir%*.in" 			"%curdir%*.iss" 		"%curdir%*.ini" 		"%curdir%*.cmake" 			"%curdir%*.png" 		"%curdir%*.jpg"  		"%curdir%*.def" 		"%curdir%*.ico" "%curdirdiskenc%*.txt" 	"%curdirdiskenc%*.bat" 	"%curdirdiskenc%*.cpp" 	"%curdirdiskenc%*.c" 	"%curdirdiskenc%*.h" 	"%curdirdiskenc%*.rc" 	"%curdirdiskenc%*.sql" 	"%curdirdiskenc%*.in" 	"%curdirdiskenc%*.iss" 	"%curdirdiskenc%*.ini" 	"%curdirdiskenc%*.cmake" 	"%curdirdiskenc%*.png" 	"%curdirdiskenc%*.jpg"  "%curdirdiskenc%*.def" 	"%curdirdiskenc%*.ico" 



IF %ERRORLEVEL% NEQ 0 (
goto last
)

git add --all
git commit -m "filename"
git push https://kpsspal:Krishna%%40%%231988@github.com/kpsspal/sample.git master

:last
pause