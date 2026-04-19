@echo off

set "ROOT=C:\Users\Robin\OneDrive - Hogeschool Gent\2025-2026\Bachelorproef\latex-hogent-bachelorproef"
set "OD=%ROOT%\output"
set "TEX=%ROOT%\bachproef\LedouxRobinBP.tex"

rem Ensure output directory exists
if not exist "%OD%" mkdir "%OD%"

rem CRITICAL: must match -output-directory EXACTLY
set "TEXMF_OUTPUT_DIRECTORY=%OD%"

rem Compile
xelatex -shell-escape -output-directory="%OD%" "%TEX%"
biber --input-directory="%OD%" --output-directory="%OD%" LedouxRobinBP
xelatex -shell-escape -output-directory="%OD%" "%TEX%"
xelatex -shell-escape -output-directory="%OD%" "%TEX%"

rem Remove auxiliary files
del /q "%OD%\*.acn" 2>nul
del /q "%OD%\*.acr" 2>nul
del /q "%OD%\*.alg" 2>nul
del /q "%OD%\*.aux" 2>nul
del /q "%OD%\*.bbl" 2>nul
del /q "%OD%\*.bcf" 2>nul
del /q "%OD%\*.bak" 2>nul
del /q "%OD%\*.blg" 2>nul
del /q "%OD%\*.dvi" 2>nul
del /q "%OD%\*.fdb_latexmk" 2>nul
del /q "%OD%\*.fls" 2>nul
del /q "%OD%\*.glg" 2>nul
del /q "%OD%\*.glo" 2>nul
del /q "%OD%\*.gls" 2>nul
del /q "%OD%\*.glsdefs" 2>nul
del /q "%OD%\*.idx" 2>nul
del /q "%OD%\*.ind" 2>nul
del /q "%OD%\*.ist" 2>nul
del /q "%OD%\*.lof" 2>nul
del /q "%OD%\*.lol" 2>nul
del /q "%OD%\*.lop" 2>nul
del /q "%OD%\*.lot" 2>nul
del /q "%OD%\*.nav" 2>nul
del /q "%OD%\*.out" 2>nul
del /q "%OD%\*.run.xml" 2>nul
del /q "%OD%\*.snm" 2>nul
del /q "%OD%\*.synctex" 2>nul
del /q "%OD%\*.synctex(busy)" 2>nul
del /q "%OD%\*.synctex.gz" 2>nul
del /q "%OD%\*.synctex.gz(busy)" 2>nul
del /q "%OD%\*.tdo" 2>nul
del /q "%OD%\*.toc" 2>nul
del /q "%OD%\*.vrb" 2>nul
del /q "%OD%\*.xdv" 2>nul
rmdir /s /q "%OD%\_minted-" 2>nul