copy %RECIPE_DIR%\build.sh build.sh

set MSYSTEM=MINGW%ARCH%
set MSYS2_PATH_TYPE=inherit
set CHERE_INVOKING=1
bash build.sh

echo "Listing directory contents."
dir

type build.log

if errorlevel 1 exit 1

echo "Copying the file to Library Bin at %LIBRARY_BIN%"	
copy genesis2.exe %LIBRARY_BIN%
if errorlevel 1 exit 1

exit 0
