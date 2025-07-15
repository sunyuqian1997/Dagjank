# 通过 ngrok 分享 Castle Map 项目

## 快速开始

### 1. 安装 ngrok

**macOS:**
```bash
brew install ngrok
```

**其他系统:**
访问 [ngrok.com/download](https://ngrok.com/download) 下载安装

### 2. 运行项目

```bash
./start-with-ngrok.sh
```

### 3. 获取公共URL

启动后，访问 http://localhost:4040 查看你的公共URL，格式类似：
- `https://abc123.ngrok.io`

将这个URL分享给其他人即可！

## 重要说明

### 本地图片
✅ **所有本地图片都会正常显示**，包括：
- `room-images/` 文件夹中的房间图片
- `images/` 文件夹中的图片
- `img/` 文件夹中的图片
- 根目录的 `final.png`、`texture.png` 等

### ngrok 免费版限制
- URL每次重启会改变
- 会话时长约2小时
- 并发连接数有限制

### 高级配置

如果需要固定域名，可以：
1. 注册ngrok账号
2. 获取authtoken
3. 运行：`ngrok authtoken YOUR_AUTH_TOKEN`
4. 升级到付费版获得固定域名

## 手动运行（可选）

如果脚本无法运行，可以手动执行：

**终端1:**
```bash
node server.js
```

**终端2:**
```bash
ngrok http 3000
```

## 故障排除

### 端口被占用
如果3000端口被占用，修改 `server.js` 中的 `PORT` 变量。

### 图片无法显示
确保图片路径正确，检查浏览器控制台是否有404错误。

### ngrok无法连接
1. 检查防火墙设置
2. 确认本地服务器正在运行
3. 尝试重启ngrok 