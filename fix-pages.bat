@echo off
echo GitHub Pages Fix Script
echo ======================
echo.

echo 1. Checking current files...
if exist ".github\workflows\deploy.yml" (
    echo ✓ Main workflow exists
) else (
    echo ✗ Main workflow missing
)

if exist ".github\workflows\simple-deploy.yml" (
    echo ✓ Simple workflow exists
) else (
    echo ✗ Simple workflow missing
)

if exist "index.html" (
    echo ✓ index.html exists
) else (
    echo ✗ index.html missing
)

if exist ".nojekyll" (
    echo ✓ .nojekyll exists
) else (
    echo ✗ .nojekyll missing
)

echo.
echo 2. Next steps to fix the deployment:
echo.
echo    A. Go to your GitHub repository
echo    B. Click "Settings" tab
echo    C. Scroll to "Pages" section
echo    D. Under "Source", select "GitHub Actions"
echo    E. Save settings
echo.
echo    F. Go to "Actions" tab
echo    G. Click "Simple GitHub Pages Deploy" workflow
echo    H. Click "Run workflow" button
echo.
echo 3. If that doesn't work, try:
echo    - Make sure repository is public
echo    - Check Actions permissions in Settings
echo    - Verify you're pushing to 'main' or 'master' branch
echo.
echo Press any key to exit...
pause > nul
