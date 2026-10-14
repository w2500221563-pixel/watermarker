# 图片水印生成器

纯前端的照片水印工具：在照片底部添加仿"今日水印相机"风格的水印（大时间、黄竖线、日期/星期/天气、地点，右下角品牌与防伪码）。

## 功能

- 上传单张或多张照片（JPG / PNG / WEBP），本地浏览器内处理，不上传服务器
- 三种版式：自动适配 / 横版 / 竖版（另有打卡卡片样式）
- 自定义时间、日期、星期、天气、地点、防伪码
- 批量处理多张照片并打包下载
- 水印位置可拖动、缩放、调透明度
- 数字使用 Open Sans 字体（本地自托管），中文使用 Noto Sans CJK（本地自托管），离线可用

## 使用

直接用浏览器打开 `index.html` 即可；或部署到任意静态托管（GitHub Pages / Cloudflare Pages / Vercel 等）。

## 目录结构

```
├── index.html                  # 主页面（含全部 CSS / JS，单文件）
├── download-fonts.sh           # 一键下载字体脚本
└── assets/                     # 本地自托管字体（需运行上方脚本下载，不随仓库提交）
    ├── NotoSansCJKSC-Regular.otf  # 中文字体（常规）
    ├── NotoSansCJKSC-Bold.otf     # 中文字体（粗体）
    └── OpenSans-VF.ttf            # 数字/拉丁字体（可变字重）
```

## 字体

水印渲染依赖 3 个本地字体文件（共约 33MB，未直接提交到仓库）。克隆后运行：

```bash
bash download-fonts.sh
```

脚本会从 Adobe（Source Han Sans，即 Noto Sans CJK 同款）与 Google Fonts 官方源下载并放入 `assets/`。不下载也可运行，页面会自动回退到系统字体/Google Fonts 在线字体。

## 说明

- 所有图片处理均在浏览器本地完成，不会上传到任何服务器。
- 在线体验地址由作者另行发布。
