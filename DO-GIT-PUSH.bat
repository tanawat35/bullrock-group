@echo off
chcp 65001 >nul
cd /d "C:\Users\Dell G15\Downloads\เว็บไซต์บริษัท"

echo ===== BULLROCK EXPRESS - Git Push =====

echo [1/6] Removing lock files...
if exist ".git\config.lock" del /f ".git\config.lock"
if exist ".git\index.lock"  del /f ".git\index.lock"
if exist ".git\HEAD.lock"   del /f ".git\HEAD.lock"

echo [2/6] git add...
git add index.html about.html services.html contact.html CNAME favicon.ico assets/ HANDOVER.md

echo [3/6] Status:
git status --short

echo [4/6] git commit...
git commit -m "feat: add real fleet, warehouse, and staff photos across all pages"

echo [5/6] git push to master...
git push origin master

echo [6/6] git push master to main...
git push origin master:main --force

echo.
echo ===== FINISHED =====
echo GitHub Pages will deploy from main branch within 1-2 minutes
echo Check: https://github.com/tanawat35/bullrock-group/deployments
echo.
pause
