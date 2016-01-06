rem Load the shared variable definitions.
call "%~dp0..\shared.cmd"
pushd "%~dp0"

rem Remove old build products - cat invalidated by timestamp change.
del *.cat *.htm > nul

rem Update the date to today and the version to 7.whateveryouentered
"%WDK_DIR%\bin\x86\stampinf" -f h2u_opsis_cap.inf -d * -v 7.%DRIVER_VER%

rem Update the date to today and the version to 7.whateveryouentered
"%WDK_DIR%\bin\x86\stampinf" -f h2u_opsis_con.inf -d * -v 7.%DRIVER_VER%

rem Update the date to today and the version to 7.whateveryouentered
"%WDK_DIR%\bin\x86\stampinf" -f tofe_lowspeedio.inf -d * -v 7.%DRIVER_VER%

popd
pause
