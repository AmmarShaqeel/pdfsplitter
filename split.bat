mkdir output
for /F "delims=" %%i in ('dir /b *.pdf') do (cpdf -add-text %%~ni -topleft 10  %%~nxi -o output/%%~nxi)
cd /d output
for /F "delims=" %%i in ('dir /b *.pdf') do (mkdir %%~ni && pdftk %%~nxi burst output %%~ni/%%~ni_%%01d.pdf)

