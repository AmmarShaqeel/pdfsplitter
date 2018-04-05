for /f %%f in ('dir /ad /b')  do (	
	cd %%f
	cpdf *.pdf -o ../%%~nxf.pdf 
	cd ..
)
