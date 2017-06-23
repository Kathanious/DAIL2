rem Moves files to installer/zip dirs

SET BATCH_DIR=%~dp0

rem Unique Database ARZ
xcopy /y  "%BATCH_DIR%\DAIL - Working\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ng" 
xcopy /y  "%BATCH_DIR%\DAIL_b\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\b" 
xcopy /y  "%BATCH_DIR%\DAIL_ep\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ep"  
xcopy /y  "%BATCH_DIR%\DAIL_s\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\s" 
xcopy /y  "%BATCH_DIR%\DAIL_sd\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sd" 
xcopy /y  "%BATCH_DIR%\DAIL_sx\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sx"   
xcopy /y  "%BATCH_DIR%\DAIL_x\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\x" 
xcopy /y  "%BATCH_DIR%\DAIL_xb\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\xb" 
xcopy /y  "%BATCH_DIR%\DAIL_dga\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\wanez" 
xcopy /y  "%BATCH_DIR%\DAIL_eternal\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\eternal" 

rem Unique Text_EN ARC
xcopy /y  "%BATCH_DIR%\DAIL - Working\resources\Text_EN.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ng" 
xcopy /y  "%BATCH_DIR%\DAIL_b\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\b" 
xcopy /y  "%BATCH_DIR%\DAIL_ep\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\ep"  
xcopy /y  "%BATCH_DIR%\DAIL_s\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\s" 
xcopy /y  "%BATCH_DIR%\DAIL_sd\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sd" 
xcopy /y  "%BATCH_DIR%\DAIL_sx\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\sx"   
xcopy /y  "%BATCH_DIR%\DAIL_x\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\x" 
xcopy /y  "%BATCH_DIR%\DAIL_xb\resources\*.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\xb" 

rem Unique resources
xcopy /y  "%BATCH_DIR%\DAIL - Working\resources\scripts.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\campaign" 
xcopy /y  "%BATCH_DIR%\DAIL - Working\resources\quests.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\campaign" 

xcopy /y  "%BATCH_DIR%\DAIL_dga\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\wanez" 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\Text_EN.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\wanez" 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\scripts.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\wanez" 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\wanez.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\wanez" 
xcopy /y  "%BATCH_DIR%\DAIL_dga\resources\wanez_dga_map.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\wanez" 

xcopy /y  "%BATCH_DIR%\DAIL_eternal\database\*.arz" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\eternal" 
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\Text_EN.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\database\eternal"  
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\maps.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\eternal" 
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\scripts.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\eternal" 
xcopy /y  "%BATCH_DIR%\DAIL_eternal\resources\quests.arc" "%BATCH_DIR%\_bag_of_holding\build\DAIL\resources\eternal" 


Echo Rename Eternal (DAIL - Survival (GD Eternal) and DGA (DAIL - Rift (DGA))arz files. Execute GQ_merge batch for all resources!
pause



