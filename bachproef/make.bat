@echo off
rem Absolute paths
set "ROOT=C:\Users\Robin\OneDrive - Hogeschool Gent\2025-2026\Bachelorproef\latex-hogent-bachelorproef"
set "OD=%ROOT%\output"
set "TEX=%ROOT%\bachproef\LedouxRobinBP.tex"

rem Ensure output directory exists
if not exist "%OD%" mkdir "%OD%"

rem Compile LaTeX with Minted + Biber
xelatex -shell-escape -output-directory="%OD%" "%TEX%"
biber --input-directory="%OD%" --output-directory="%OD%" LedouxRobinBP
xelatex -shell-escape -output-directory="%OD%" "%TEX%"
xelatex -shell-escape -output-directory="%OD%" "%TEX%"