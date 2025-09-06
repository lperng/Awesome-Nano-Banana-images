@echo off
echo Setting up GitHub Pages deployment...
echo.

echo 1. Creating necessary files...
if not exist ".github\workflows" mkdir ".github\workflows"
echo GitHub Actions workflow already created.

if not exist ".nojekyll" (
    echo. > .nojekyll
    echo Created .nojekyll file
) else (
    echo .nojekyll file already exists
)

if not exist "index.html" (
    copy "index_zh_tw.html" "index.html"
    echo Created index.html from index_zh_tw.html
) else (
    echo index.html already exists
)

echo.
echo 2. Setup complete! Next steps:
echo    - Push your code to GitHub
echo    - Enable GitHub Pages in repository settings
echo    - Set source to "GitHub Actions"
echo    - Your site will be available at: https://yourusername.github.io/Awesome-Nano-Banana-images/
echo.
echo Press any key to exit...
pause > nul
