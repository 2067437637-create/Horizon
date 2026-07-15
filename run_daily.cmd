@echo off
chcp 65001 > nul
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8
echo ========================================
echo   🌅 Horizon - 每日新闻速递生成器
echo ========================================
echo.

uv run python -m src.main --hours 24

echo.
echo ✅ 完成！
echo    - 主备份：data\summaries\
echo    - 自定义：%HORIZON_EXTRA_OUTPUT_DIR%
echo    - Pages：  docs\_posts\
echo.
pause
