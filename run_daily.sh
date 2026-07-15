#!/bin/bash
cd "$(dirname "$0")"
echo "========================================"
echo "  🌅 Horizon - 每日新闻速递生成器"
echo "========================================"
echo ""

PYTHONIOENCODING=utf-8 uv run python -m src.main --hours 24

echo ""
echo "✅ 完成！日报保存在 data/summaries/ 目录"
