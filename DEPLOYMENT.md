# GitHub Pages 部署指南

## 快速开始

1. **启用 GitHub Pages**
   - 进入你的 GitHub 仓库
   - 点击 "Settings" 标签
   - 在左侧菜单中找到 "Pages"
   - 在 "Source" 部分选择 "GitHub Actions"

2. **推送代码**
   ```bash
   git add .
   git commit -m "Add GitHub Pages deployment"
   git push origin main
   ```

3. **查看部署状态**
   - 进入 "Actions" 标签查看部署进度
   - 部署完成后，你的网站将在 `https://yourusername.github.io/Awesome-Nano-Banana-images/` 可用

## 文件说明

- `index.html` - 主页面（从 index_zh_tw.html 重命名）
- `.nojekyll` - 告诉 GitHub Pages 不要使用 Jekyll 处理
- `.github/workflows/deploy.yml` - GitHub Actions 部署配置

## 自定义域名

如果你想使用自定义域名：

1. 在仓库根目录创建 `CNAME` 文件
2. 在文件中写入你的域名（如：`example.com`）
3. 在你的域名提供商处设置 CNAME 记录指向 `yourusername.github.io`

## 故障排除

- 如果部署失败，检查 Actions 标签中的错误信息
- 确保所有图片文件都在 `images/` 目录中
- 确保 `.nojekyll` 文件存在（空文件即可）
