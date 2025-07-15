# Vercel Deployment Guide

## 快速部署到 Vercel

### 方法 1: 通过 GitHub (推荐)

1. 将项目推送到 GitHub 仓库
2. 登录 [Vercel](https://vercel.com)
3. 点击 "New Project"
4. 导入您的 GitHub 仓库
5. 保持默认设置，点击 "Deploy"
6. 等待部署完成

### 方法 2: 使用 Vercel CLI

1. 安装 Vercel CLI:
   ```bash
   npm i -g vercel
   ```

2. 在项目根目录运行:
   ```bash
   vercel
   ```

3. 按照提示操作即可

## 重要注意事项

### ✅ 可以正常工作的功能：
- 自动加载 `loadme.json`
- 显示 `room-images/` 文件夹中的所有图片
- 房间拖拽、调整大小
- 导出/导入布局
- 所有查看功能

### ❌ 不能工作的功能：
- 图片上传（需要手动添加到 `room-images/` 文件夹后重新部署）
- 保存布局到服务器（仅保存到浏览器 localStorage）

### 部署前检查清单：
- [ ] 确保 `loadme.json` 文件存在且格式正确
- [ ] 确保所有需要的图片都在 `room-images/` 文件夹中
- [ ] 确保 `index.html` 是项目入口文件
- [ ] 确保 `vercel.json` 配置文件存在

### 更新内容：
如需更新房间图片或布局，需要：
1. 在本地修改文件
2. 提交到 GitHub（如果使用 GitHub 集成）
3. Vercel 会自动重新部署

或者使用 Vercel CLI：
```bash
vercel --prod
```

## 项目结构要求：
```
project-root/
├── index.html         # 主页面
├── loadme.json        # 房间布局数据
├── final.png          # 城堡平面图
├── vercel.json        # Vercel 配置
├── room-images/       # 房间图片文件夹
│   ├── bedroom1.png
│   ├── bedroom2.png
│   └── ...
└── README.md
``` 