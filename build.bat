@echo off
echo 开始构建和部署 MkDocs 网站...
echo.

echo [1/3] 清理旧的构建文件...
if exist site rmdir /s /q site

echo [2/3] 构建网站...
C:/Users/13587/anaconda3/Scripts/conda.exe run -p C:\Users\13587\anaconda3 --no-capture-output mkdocs build

echo [3/3] 检查构建结果...
if exist site (
    echo ✓ 网站构建成功！
    echo.
    echo 生成的文件位于 'site' 目录中
    echo 您可以运行以下命令启动本地服务器:
    echo   mkdocs serve
    echo.
    echo 或者将更改推送到 GitHub 以自动部署:
    echo   git add .
    echo   git commit -m "Update website"
    echo   git push origin main
) else (
    echo ✗ 网站构建失败！
    echo 请检查配置文件和 Markdown 语法
)

echo.
pause