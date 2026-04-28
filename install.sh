#!/bin/bash
POWER_DIR="$HOME/.kiro/powers/installed/agentic-os"
INSTALLED_JSON="$HOME/.kiro/powers/installed.json"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Agentic OS..."

mkdir -p "$POWER_DIR"
cp -r "$SCRIPT_DIR/steering-templates" "$POWER_DIR/"
cp "$SCRIPT_DIR/POWER.md" "$POWER_DIR/"

python3 - <<EOF
import json, pathlib
p = pathlib.Path("$INSTALLED_JSON")
if not p.exists():
    p.write_text('{"version":"1.0.0","installedPowers":[],"dismissedAutoInstalls":[]}')
data = json.loads(p.read_text())
entry = {"name": "agentic-os", "registryId": "user-added"}
if entry not in data["installedPowers"]:
    data["installedPowers"].append(entry)
    p.write_text(json.dumps(data, indent=2))
print("Done.")
EOF

echo "Restart Kiro, then type: Let's set up my Agentic OS"
