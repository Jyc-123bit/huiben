#!/bin/bash
# 绘本朗读 —— 上传到 GitHub（Mac 用）
set -e
cd "$(dirname "$0")"

echo "============================================"
echo "  绘本朗读 - 上传到 GitHub（一键）"
echo "============================================"
echo ""
echo "请先准备好你的新 GitHub Token（classic，勾选 repo 权限）"
echo "如果不会创建，看同目录下的《部署步骤-GitHub.md》"
echo ""
read -p "在这里粘贴你的 Token 然后回车：" TOKEN
echo ""
git remote set-url origin "https://oauth2:${TOKEN}@github.com/Jyc-123bit/huiben.git"

echo "正在上传..."
if git push origin main; then
  echo ""
  echo "✅ 上传成功！"
  echo "网址：https://jyc-123bit.github.io/huiben/"
  echo ""
  echo "如果打不开，去这里点一下 Save："
  echo "https://github.com/Jyc-123bit/huiben/settings/pages"
else
  echo ""
  echo "❌ 上传失败。常见原因："
  echo "  1) Token 复制错了 / 已过期"
  echo "  2) Token 没勾选 repo 权限"
fi
