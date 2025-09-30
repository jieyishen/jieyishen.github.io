@echo off
echo ========================================
echo    MkDocs 故障排除工具
echo ========================================
echo.

echo [1/5] 检查 Python 环境...
C:/Users/13587/anaconda3/Scripts/conda.exe run -p C:\Users\13587\anaconda3 --no-capture-output python --version
if %errorlevel% neq 0 (
    echo ✗ Python 环境有问题
    goto :end
) else (
    echo ✓ Python 环境正常
)
echo.

echo [2/5] 检查 MkDocs 安装...
C:/Users/13587/anaconda3/Scripts/conda.exe run -p C:\Users\13587\anaconda3 --no-capture-output mkdocs --version
if %errorlevel% neq 0 (
    echo ✗ MkDocs 未正确安装
    echo 请运行: pip install mkdocs mkdocs-material
    goto :end
) else (
    echo ✓ MkDocs 已安装
)
echo.

echo [3/5] 检查配置文件...
if not exist "mkdocs.yml" (
    echo ✗ 找不到 mkdocs.yml 配置文件
    goto :end
) else (
    echo ✓ 配置文件存在
)
echo.

echo [4/5] 检查文档目录...
if not exist "docs" (
    echo ✗ 找不到 docs 目录
    goto :end
) else (
    echo ✓ 文档目录存在
)
echo.

echo [5/5] 检查端口占用情况...
echo 检查常用端口状态:
netstat -an | find "127.0.0.1:8000" >nul
if %errorlevel% == 0 (
    echo   ⚠ 端口 8000 已被占用
) else (
    echo   ✓ 端口 8000 可用
)

netstat -an | find "127.0.0.1:8001" >nul
if %errorlevel% == 0 (
    echo   ⚠ 端口 8001 已被占用
) else (
    echo   ✓ 端口 8001 可用
)

netstat -an | find "127.0.0.1:8002" >nul
if %errorlevel% == 0 (
    echo   ⚠ 端口 8002 已被占用
) else (
    echo   ✓ 端口 8002 可用
)
echo.

echo ========================================
echo 测试构建...
echo ========================================
C:/Users/13587/anaconda3/Scripts/conda.exe run -p C:\Users\13587\anaconda3 --no-capture-output mkdocs build --clean
if %errorlevel% neq 0 (
    echo ✗ 构建失败，请检查配置和内容
    goto :end
) else (
    echo ✓ 构建成功
)
echo.

echo ========================================
echo 诊断完成！
echo ========================================
echo.
echo 如果所有检查都通过，您可以：
echo 1. 运行 serve.bat 启动开发服务器
echo 2. 运行 build.bat 构建静态文件
echo.
echo 如果仍有问题，请检查：
echo - 防火墙设置
echo - 杀毒软件拦截
echo - 网络代理设置
echo.

:end
pause