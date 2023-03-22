@echo off

call py .\gerar_docs_json.py
call npm run build
call firebase deploy