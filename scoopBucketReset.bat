@echo off

cd /d "%~dp0" && powershell -NoProfile -ExecutionPolicy Bypass -Command "& '.\moveWindow.ps1'"
powershell -NoProfile -ExecutionPolicy Bypass -Command "& '.\scoopBucketReset.ps1'"