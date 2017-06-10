rem Populates Build Directories 

SET BATCH_DIR=%~dp0

rem Inserts Wanez database
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\wanez_unique\database\mod_wanez" /s "%BATCH_DIR%\DAIL - Working\database\mod_wanez" 
PAUSE

rem Copies the working database 
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_b\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_s\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_x\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_xb\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_sx\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_sd\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_ep\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_dga\database" /mir
robocopy "%BATCH_DIR%\DAIL - Working\database" "%BATCH_DIR%\DAIL_eternal\database" /mir

rem Mirrors the assets for text uniques
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_b\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_s\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_x\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_xb\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_sx\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_sd\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_ep\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_dga\assets\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\assets\text_en" "%BATCH_DIR%\DAIL_eternal\assets\text_en" /mir

rem Mirrors the source for text uniques
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_b\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_s\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_x\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_xb\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_sx\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_sd\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_ep\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_dga\source\text_en" /mir
robocopy "%BATCH_DIR%\DAIL - Working\source\text_en" "%BATCH_DIR%\DAIL_eternal\source\text_en" /mir


rem Copies campaign unique database from holding to working dir - switch /s for folders and subfolders
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\b_unique\database" /s "%BATCH_DIR%\DAIL_b\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\s_unique\database" /s "%BATCH_DIR%\DAIL_s\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\x_unique\database" /s "%BATCH_DIR%\DAIL_x\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\xb_unique\database" /s "%BATCH_DIR%\DAIL_xb\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\sx_unique\database" /s "%BATCH_DIR%\DAIL_sx\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\sd_unique\database" /s "%BATCH_DIR%\DAIL_sd\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\xb_unique\database" /s "%BATCH_DIR%\DAIL_xb\database" 
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\wanez_unique" /s "%BATCH_DIR%\DAIL_dga"
xcopy /Y "%BATCH_DIR%\_Bag_of_Holding\DAIL2\modes\eternal_unique" /s "%BATCH_DIR%\DAIL_eternal" 

PAUSE


