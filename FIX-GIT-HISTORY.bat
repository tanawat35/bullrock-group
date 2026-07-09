@echo off
chcp 65001 >nul
cd /d "C:\Users\Dell G15\Downloads\เว็บไซต์บริษัท"

echo ===== BULLROCK EXPRESS - Fix Git History =====
echo Problem: .git is 905MB because 4 old video files (up to 493MB each)
echo are stuck in git history, even though they're already deleted from the site.
echo GitHub blocks files over 100MB, so every push has been failing.
echo.
echo This script squashes all history into ONE clean commit (current files only)
echo and force-pushes it. Your GitHub commit history will be replaced/reset.
echo The website content itself is NOT changed - only the git history.
echo.
pause

echo [1/7] Removing ALL leftover lock files in .git (recursive)...
for /r ".git" %%f in (*.lock) do (
    echo   deleting %%f
    del /f /q "%%f" 2>nul
)

echo [2/7] Removing any leftover clean-master branch from a previous attempt...
git branch -D clean-master 2>nul

echo [3/7] Creating a clean orphan branch (no history)...
git checkout --orphan clean-master
if errorlevel 1 goto :error

echo [4/7] Staging current files...
git add -A
if exist "assets\*.mp4" git reset -- assets\*.mp4

echo [5/7] Committing clean snapshot...
git commit -m "chore: reset history, remove oversized video files from git"
if errorlevel 1 goto :error

echo [6/7] Replacing master branch with the clean one...
git branch -D master
if errorlevel 1 goto :error
git branch -m master
if errorlevel 1 goto :error

echo [7/7] Force pushing clean history to GitHub (master and main)...
git push origin master --force
if errorlevel 1 goto :error
git push origin master:main --force
if errorlevel 1 goto :error

echo.
echo ===== FINISHED SUCCESSFULLY =====
echo Repo should now be small (~17MB) and push succeeded.
echo GitHub Pages will redeploy in 1-2 minutes.
echo Check: https://github.com/tanawat35/bullrock-group/deployments
echo Live site: http://bullrock-group.com/
echo.
goto :end

:error
echo.
echo ===== STOPPED - SOMETHING FAILED ABOVE =====
echo Please scroll up, read the exact error message, and send a screenshot back.
echo Nothing further was run so it's safe to try again.

:end
pause
