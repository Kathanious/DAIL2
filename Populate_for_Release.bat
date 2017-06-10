rem Moves files to installer/zip dirs

SET BATCH_DIR=%~dp0

rem Database ARZ
xcopy /y  "%BATCH_DIR%\DAIL - Working\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ng" 
xcopy /y  "%BATCH_DIR%\DAIL_b\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\b" 
xcopy /y  "%BATCH_DIR%\DAI_ep\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ep"  
xcopy /y  "%BATCH_DIR%\DAIL_s\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\s" 
xcopy /y  "%BATCH_DIR%\DAIL_sd\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sd" 
xcopy /y  "%BATCH_DIR%\DAIL_sx\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sx"   
xcopy /y  "%BATCH_DIR%\DAIL_x\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\x" 
xcopy /y  "%BATCH_DIR%\DAIL_xb\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\xb" 

rem Unique text
xcopy /y  "%BATCH_DIR%\DAIL - Working\resources\Text_EN.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ng" 
xcopy /y  "%BATCH_DIR%\DAIL_b\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\b" 
xcopy /y  "%BATCH_DIR%\DAIL_ep\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ep"  
xcopy /y  "%BATCH_DIR%\DAIL_s\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\s" 
xcopy /y  "%BATCH_DIR%\DAIL_sd\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sd" 
xcopy /y  "%BATCH_DIR%\DAIL_sx\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sx"   
xcopy /y  "%BATCH_DIR%\DAIL_x\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\x" 
xcopy /y  "%BATCH_DIR%\DAIL_xb\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\xb"

rem Unique resources
xcopy /y  "%BATCH_DIR%\DAIL - Working\resources\scripts.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\campaign" /s

xcopy /y  "%BATCH_DIR%\DAIL_dga\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\wanez" /s 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\Text_EN.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\wanez" /s 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\scripts.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\wanez" /s 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\wanez.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\wanez" /s 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\wanez_dga_map.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\wanez" /s 

xcopy /y  "%BATCH_DIR%\DAIL_eternal\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\eternal" /s  
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\Text_EN.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\eternal" /s  
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\maps.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\eternal" /s 
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\scripts.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\eternal" /s 

rem Moves arc files to GQ holding for asset insertion
xcopy /y  "%BATCH_DIR%\DAIL - Working\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\DAIL2\Modes\GQ_Merge_Data" /s

rem ren "%BATCH_DIR%_bag_of_holding\build\DAIL\database\wanez\dail_dga.arz" "%BATCH_DIR%_bag_of_holding\build\DAIL\database\wanez\DAIL - Rift (DGA).arz"
rem ren "%BATCH_DIR%_bag_of_holding\build\DAIL\database\eternal\dail_eternal.arz" "%BATCH_DIR%_bag_of_holding\build\DAIL\database\eternal\DAIL - Survival (GD Eternal).arz"
rem ren "%BATCH_DIR%_bag_of_holding\build\DAIL\database\ng\dail - working.arz" "%BATCH_DIR%_bag_of_holding\build\DAIL\database\ng\dail_ng.arz"

pause



