@echo off
set POWER_DIR=%USERPROFILE%\.kiro\powers\installed\agentic-os
set SCRIPT_DIR=%~dp0

echo Installing Agentic OS...

if not exist "%POWER_DIR%" mkdir "%POWER_DIR%"
xcopy /E /I /Y "%SCRIPT_DIR%steering-templates" "%POWER_DIR%\steering-templates\" >nul
copy /Y "%SCRIPT_DIR%POWER.md" "%POWER_DIR%\" >nul

python -c "import json,pathlib,os; p=pathlib.Path(os.path.expanduser('~/.kiro/powers/installed.json')); p.exists() or p.write_text('{\"version\":\"1.0.0\",\"installedPowers\":[],\"dismissedAutoInstalls\":[]}'); d=json.loads(p.read_text()); e={'name':'agentic-os','registryId':'user-added'}; e not in d['installedPowers'] and d['installedPowers'].append(e); p.write_text(json.dumps(d,indent=2)); print('Done.')"

echo Restart Kiro, then type: Let's set up my Agentic OS
pause
