# 欢迎来到我的网站

这是我的个人网站，使用 MkDocs 构建。

## 关于 MkDocs

MkDocs 是一个快速、简单且美观的静态网站生成器，专为构建项目文档而设计。源文档使用 Markdown 编写，并通过单个 YAML 配置文件进行配置。

## 特性

- **简单易用** - 使用 Markdown 编写内容
- **响应式设计** - 适配移动设备
- **主题美观** - 使用 Material Design 主题
- **搜索功能** - 内置全文搜索
- **语法高亮** - 代码块语法高亮

## 快速开始

要开始使用这个网站：

1. 编辑 `docs/` 目录中的 Markdown 文件
2. 修改 `mkdocs.yml` 配置文件
3. 运行 `mkdocs serve` 预览网站
4. 运行 `mkdocs build` 构建静态文件

## 示例代码

```python
def hello_world():
    print("Hello, World!")
    
hello_world()
```

## 数学公式

你也可以在文档中使用数学公式：

行内公式：这是一个著名的公式 $E = mc^2$

块级公式：

$$
\frac{n!}{k!(n-k)!} = \binom{n}{k}
$$

更复杂的公式：

$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$

## 更多信息

查看 [关于页面](about.md) 了解更多信息。