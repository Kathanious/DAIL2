rem Removes arz files for update rebuild.

SET BATCH_DIR=%~dp0

del "%BATCH_DIR%\DAIL_b\database\*.arz" 
del "%BATCH_DIR%\DAIL_s\database\*.arz" 
del "%BATCH_DIR%\DAIL_x\database\*.arz" 
del "%BATCH_DIR%\DAIL_sx\database\*.arz" 
del "%BATCH_DIR%\DAIL_sd\database\*.arz" 
del "%BATCH_DIR%\DAIL_ep\database\*.arz" 
del "%BATCH_DIR%\DAIL_dga\database\*.arz" 
del "%BATCH_DIR%\DAIL_eternal\database\*.arz" 
del "%BATCH_DIR%\DAIL - Working\database\*.arz" 

PAUSE