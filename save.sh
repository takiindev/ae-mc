#!/bin/bash

# Tên session nếu chạy bằng screen (nếu không dùng thì bỏ phần này)
SESSION="minecraft"

echo "⏹ Đang dừng server..."

# Nếu bạn dùng screen để chạy server:
screen -S $SESSION -p 0 -X stuff "stop$(printf \\r)"

# Nếu bạn chạy server trực tiếp (java -jar ...) thì thay bằng lệnh kill:
# pkill -f "server.jar"

sleep 10 # đợi server tắt hẳn

echo "💾 Đang commit và push lên git..."
git add .
git commit -m "up"
git push

echo "✅ Hoàn tất lưu server lên Git!"
