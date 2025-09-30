@echo off
echo 启动 MkDocs 开发服务器...
echo.

REM 检查端口 8000 是否被占用
netstat -an | find "127.0.0.1:8000" >nul
if %errorlevel% == 0 (
    echo 端口 8000 已被占用，使用端口 8001...
    set PORT=8001
) else (
    echo 使用默认端口 8000...
    set PORT=8000
)

echo 网站将在 http://127.0.0.1:%PORT% 上运行
echo 按 Ctrl+C 停止服务器
echo.
echo 提示: 如果遇到连接问题，请尝试：
echo 1. 检查防火墙设置
echo 2. 确保没有其他程序占用端口
echo 3. 重新运行此脚本
echo.

C:/Users/13587/anaconda3/Scripts/conda.exe run -p C:\Users\13587\anaconda3 --no-capture-output mkdocs serve --dev-addr=127.0.0.1:%PORT%