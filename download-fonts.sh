#!/bin/bash
# 一键下载本地自托管字体到 assets/ 目录
# 中文字体：Source Han Sans（即 Noto Sans CJK，同款字体，Adobe 官方源）
# 数字/拉丁字体：Open Sans（Google Fonts 官方源）
set -e
mkdir -p assets
BASE="https://github.com/adobe-fonts/source-han-sans/raw/release/OTF/SimplifiedChinese"
echo "下载中文字体（约 33MB，请稍候）..."
curl -sL -o assets/NotoSansCJKSC-Regular.otf "$BASE/SourceHanSansSC-Regular.otf"
curl -sL -o assets/NotoSansCJKSC-Bold.otf "$BASE/SourceHanSansSC-Bold.otf"
echo "下载 Open Sans 字体..."
curl -sL -o assets/OpenSans-VF.ttf "https://github.com/google/fonts/raw/main/ofl/opensans/OpenSans%5Bwdth%2Cwght%5D.ttf"
echo "完成！字体已放入 assets/ 目录。"
ls -lh assets/
