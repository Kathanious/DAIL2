rem Removes build files in prep for update rebuild

SET BATCH_DIR=%~dp0

del "%BATCH_DIR%\DAIL_b\database\*.arz" 
rd "%BATCH_DIR%\DAIL_b\resources\" /s

del "%BATCH_DIR%\DAIL_s\database\*.arz" 
rd "%BATCH_DIR%\DAIL_s\resources" /s

del "%BATCH_DIR%\DAIL_x\database\*.arz" 
rd "%BATCH_DIR%\DAIL_x\resources" /s

del "%BATCH_DIR%\DAIL_xb\database\*.arz" 
rd "%BATCH_DIR%\DAIL_xb\resources" /s

del "%BATCH_DIR%\DAIL_sx\database\*.arz" 
rd "%BATCH_DIR%\DAIL_sx\resources" /s

del "%BATCH_DIR%\DAIL_sd\database\*.arz" 
rd "%BATCH_DIR%\DAIL_sd\resources" /s

del "%BATCH_DIR%\DAIL_ep\database\*.arz" 
rd "%BATCH_DIR%\DAIL_ep\resources" /s

del "%BATCH_DIR%\DAIL_dga\database\*.arz" 
rd "%BATCH_DIR%\DAIL_dga\resources" /s

del "%BATCH_DIR%\DAIL_eternal\database\*.arz" 
rd "%BATCH_DIR%\DAIL_eternal\resources" /s

del "%BATCH_DIR%\DAIL - Working\database\*.arz" 
rd "%BATCH_DIR%\DAIL - Working\resources" /s
PAUSE