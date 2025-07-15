#!/bin/bash

echo "========================================"
echo "Castle Map 服务器 + ngrok 启动脚本"
echo "========================================"
echo ""

# 检查node是否安装
if ! command -v node &> /dev/null
then
    echo "❌ Node.js 未安装。请先安装 Node.js。"
    exit 1
fi

# 检查ngrok是否安装
if ! command -v ngrok &> /dev/null
then
    echo "❌ ngrok 未安装。请先安装 ngrok。"
    echo ""
    echo "安装方法："
    echo "1. macOS: brew install ngrok"
    echo "2. 或访问 https://ngrok.com/download"
    exit 1
fi

# 启动本地服务器
echo "🚀 启动本地服务器..."
node server.js &
SERVER_PID=$!
echo "✅ 服务器已启动 (PID: $SERVER_PID)"
echo ""

# 等待服务器启动
sleep 2

# 启动ngrok
echo "🌐 启动 ngrok..."
echo "正在创建公共访问链接..."
echo ""

# 使用ngrok暴露3000端口
ngrok http 3000 &
NGROK_PID=$!

# 等待ngrok启动
sleep 3

echo ""
echo "========================================"
echo "✅ 服务已启动！"
echo ""
echo "📌 本地访问: http://localhost:3000"
echo ""
echo "🌍 ngrok 控制台: http://localhost:4040"
echo "   (在此查看你的公共URL)"
echo ""
echo "📸 所有图片文件都会从本地提供"
echo "   确保以下文件夹存在："
echo "   - room-images/"
echo "   - images/"
echo "   - img/"
echo ""
echo "⚠️  注意事项："
echo "1. 分享ngrok提供的公共URL给其他人"
echo "2. 免费版ngrok每次重启URL会改变"
echo "3. 会话时长有限制（免费版约2小时）"
echo ""
echo "按 Ctrl+C 停止所有服务"
echo "========================================"

# 清理函数
cleanup() {
    echo ""
    echo "正在关闭服务..."
    kill $SERVER_PID 2>/dev/null
    kill $NGROK_PID 2>/dev/null
    echo "✅ 已关闭所有服务"
    exit 0
}

# 捕获Ctrl+C信号
trap cleanup INT

# 保持脚本运行
wait 