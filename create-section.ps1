param(
    [Parameter(Mandatory=$true)]
    [string]$FolderName,
    
    [Parameter(Mandatory=$false)]
    [string]$Title = ""
)

# 如果没有提供标题，使用文件夹名作为标题
if ($Title -eq "") {
    $Title = $FolderName
}

# 目标文件夹路径
$FolderPath = "docs\$FolderName"

# 检查文件夹是否存在
if (-not (Test-Path $FolderPath)) {
    Write-Host "创建文件夹: $FolderPath"
    New-Item -ItemType Directory -Path $FolderPath -Force
}

# .pages 文件路径
$PagesFile = "$FolderPath\.pages"

# .pages 文件内容
$PagesContent = @"
title: $Title
nav:
  - index.md
  - ...
"@

# 创建 .pages 文件
Write-Host "创建 .pages 文件: $PagesFile"
$PagesContent | Out-File -FilePath $PagesFile -Encoding UTF8

# 创建 index.md 文件（如果不存在）
$IndexFile = "$FolderPath\index.md"
if (-not (Test-Path $IndexFile)) {
    $IndexContent = @"
# $Title

欢迎来到 $Title 专区！

## 内容目录

这里将自动显示本目录下的所有文章。

## 介绍

请在这里添加关于 $Title 的介绍内容。

## 学习资源

- 理论基础
- 实际应用案例
- 相关工具和资源

持续更新中...
"@
    
    Write-Host "创建 index.md 文件: $IndexFile"
    $IndexContent | Out-File -FilePath $IndexFile -Encoding UTF8
}

Write-Host ""
Write-Host "✅ 文件夹 '$FolderName' 设置完成！"
Write-Host "📁 文件夹路径: $FolderPath"
Write-Host "📄 已创建: .pages 和 index.md 文件"
Write-Host ""
Write-Host "使用方法："
Write-Host "1. 在 $FolderPath 目录下创建新的 .md 文件"
Write-Host "2. 文件会自动出现在导航中"
Write-Host "3. index.md 会作为该部分的首页"