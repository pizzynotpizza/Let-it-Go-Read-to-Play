@echo off
rem Let it Go - start the hand tracker. Open "Let it Go.exe" yourself after the camera window shows.
rem Keep the camera window open while you play. Esc in the camera window stops the tracker.
chcp 65001 >nul
cd /d "%~dp0"
title Let it Go - Hand Tracker
if not exist "HandTracker\python\python.exe" (
    echo HandTracker\python is missing. Copy the whole build folder.
    pause
    exit /b 1
)
echo Starting the hand tracker...
echo When the camera window shows, open "Let it Go.exe" to play.
echo Keep this window and the camera window open while you play.
cd /d "%~dp0Let it Go_Data\StreamingAssets\HandTracker"
"%~dp0HandTracker\python\python.exe" -E -s hand_tracker.py --no-heartbeat --preview %*
if errorlevel 1 pause
