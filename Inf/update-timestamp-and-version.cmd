rem Load the shared variable definitions.
call "%~dp0..\shared.cmd"
pushd "%~dp0"

rem Remove old build products - cat invalidated by timestamp change.
del *.cat *.htm > nul

rem Update the date to today and the version to 7.whateveryouentered
"%WDK_DIR%\bin\x86\stampinf" -f osvr_cdc.inf -d * -v 7.%DRIVER_VER%

rem Update the date to today and the version to 1.whateveryouentered
"%WDK_DIR%\bin\x86\stampinf" -f osvr_hdk_display.inf -d * -v 1.%DRIVER_VER%

rem Update the date to today and the version to 7.whateveryouentered
rem (see inf as to why we need a high major version)
"%WDK_DIR%\bin\x86\stampinf" -f osvr_hdk_hid.inf -d * -v 7.%DRIVER_VER%

rem Update the date to today and the version to 7.whateveryouentered
rem (see inf as to why we need a high major version)
"%WDK_DIR%\bin\x86\stampinf" -f osvr_hdk_ircam.inf -d * -v 7.%DRIVER_VER%

popd
pause