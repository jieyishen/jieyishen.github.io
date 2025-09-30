# 我的第一篇博客文章

今天我使用 MkDocs 搭建了个人网站，在这里分享一下过程和心得。

## 为什么选择 MkDocs？

在众多静态网站生成器中，我选择 MkDocs 的原因：

1. **简单易用** - 配置简单，上手快
2. **Markdown 支持** - 使用熟悉的 Markdown 语法
3. **主题美观** - Material 主题非常漂亮
4. **文档友好** - 特别适合技术文档和博客

## 构建过程

### 1. 环境准备

首先需要安装 Python 和相关依赖：

```bash
pip install mkdocs mkdocs-material mkdocs-awesome-pages-plugin
```

### 2. 项目初始化

创建基本的项目结构：

```
jieyishen.github.io/
├── docs/
│   ├── index.md
│   └── about.md
├── mkdocs.yml
└── requirements.txt
```

### 3. 配置文件

`mkdocs.yml` 是核心配置文件：

```yaml
site_name: 解依申的网站
theme:
  name: material
  language: zh
```

### 4. 自动部署

使用 GitHub Actions 实现自动部署到 GitHub Pages：

```yaml
name: Deploy MkDocs to GitHub Pages
on:
  push:
    branches: [ "main" ]
```

## 遇到的问题

### 问题 1: 中文字体显示

解决方案是在主题配置中设置正确的语言：

```yaml
theme:
  language: zh
```

### 问题 2: 代码高亮

通过添加 `pymdownx.highlight` 扩展解决：

```yaml
markdown_extensions:
  - pymdownx.highlight:
      anchor_linenums: true
```

## 结果展示

网站功能包括：

- ✅ 响应式设计
- ✅ 深色/浅色主题切换
- ✅ 全文搜索
- ✅ 代码语法高亮
- ✅ 数学公式支持

## 下一步计划

1. 添加更多博客文章
2. 集成评论系统
3. 添加统计分析
4. 优化 SEO

## 总结

MkDocs 是一个优秀的静态网站生成器，特别适合程序员使用。通过简单的配置就能创建出专业的个人网站。

如果你也想搭建类似的网站，可以参考我的 [GitHub 仓库](https://github.com/jieyishen/jieyishen.github.io)。

---

**标签**: #MkDocs #静态网站 #GitHub-Pages #教程

**相关文章**:
- [Python 编程技巧](python-tips.md)
- [关于我](../about.md)