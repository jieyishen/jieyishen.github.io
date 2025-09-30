# jieyishen 的个人网站

这是使用 MkDocs 构建的个人网站，托管在 GitHub Pages 上。

## 🚀 快速开始

### 本地开发

1. **克隆仓库**
   ```bash
   git clone https://github.com/jieyishen/jieyishen.github.io.git
   cd jieyishen.github.io
   ```

2. **安装依赖**
   ```bash
   pip install -r requirements.txt
   ```

3. **本地预览**
   ```bash
   mkdocs serve
   ```
   
   打开浏览器访问 `http://127.0.0.1:8000` 查看网站

4. **构建静态文件**
   ```bash
   mkdocs build
   ```

### 在线访问

网站地址: https://jieyishen.github.io

## 📁 项目结构

```
jieyishen.github.io/
├── docs/                   # 文档源文件
│   ├── index.md           # 首页
│   └── about.md           # 关于页面
├── .github/
│   └── workflows/
│       └── deploy.yml     # GitHub Actions 部署配置
├── mkdocs.yml             # MkDocs 配置文件
├── requirements.txt       # Python 依赖
├── .gitignore            # Git 忽略文件
└── README.md             # 项目说明
```

## 📖 使用指南

### 添加新页面

1. 在 `docs/` 目录下创建新的 `.md` 文件
2. 在 `mkdocs.yml` 的 `nav` 部分添加新页面
3. 提交更改，GitHub Actions 会自动部署

### 自定义配置

编辑 `mkdocs.yml` 文件来：
- 修改网站信息
- 调整主题设置
- 添加插件
- 配置导航结构

### 本地开发流程

1. 修改文档内容
2. 运行 `mkdocs serve` 预览更改
3. 满意后提交到 GitHub
4. GitHub Actions 自动构建和部署

## 🛠️ 技术栈

- **MkDocs** - 静态网站生成器
- **Material for MkDocs** - Material Design 主题
- **GitHub Pages** - 网站托管
- **GitHub Actions** - 持续集成/部署

## 📄 许可证

本项目使用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情

## 📞 联系方式

- GitHub: [@jieyishen](https://github.com/jieyishen)
- Email: shen.jieyi@stu.sufe.edu.cn

---

⭐ 如果这个项目对你有帮助，请给个 star！