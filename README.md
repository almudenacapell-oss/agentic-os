# Agentic Operating System

**Download:** [github.com/almudenacapell-oss/agentic-os](https://github.com/almudenacapell-oss/agentic-os)

→ Click the green **Code** button → **Download ZIP** → unzip it → run the installer below.

---

## Install (2 minutes)

**Step 1 — Download**
Click the green **Code** button on this page → **Download ZIP** → unzip it

**Step 2 — Run the installer**

Mac:
1. Open Terminal (search "Terminal" in Spotlight)
2. Type `bash ` — with a space after, don't press Enter yet
3. Drag the `install.sh` file from Finder into the Terminal window — it fills in the path
4. Now press Enter

Windows:
1. Open the unzipped folder
2. Double-click `install.bat`

**Step 3 — Restart Kiro**

## Set up (10 minutes)

Open any workspace in Kiro and type:

> **Let's set up my Agentic OS**

Answer 4 questions. Kiro configures everything around your answers.

## Use it

| Say | Get |
|---|---|
| `good morning` | 5-minute daily brief |
| `prep me for [meeting]` | Talking points from your notes |
| `end of day` | Honest coaching debrief |
| `log decision: [X]` | Saved to your decision log |
| paste a transcript | Meeting notes extracted automatically |

## Connect your tools (recommended)

The morning briefing is most useful when Kiro can see your calendar and email.

Add to `~/.kiro/settings/mcp.json`:

**Gmail + Google Calendar:**
```json
"google-workspace": {
  "command": "uvx",
  "args": ["mcp-google-workspace@latest"],
  "env": { "GOOGLE_CLIENT_ID": "...", "GOOGLE_CLIENT_SECRET": "..." },
  "disabled": false
}
```

**Outlook + Outlook Calendar:**
```json
"outlook": {
  "command": "uvx",
  "args": ["mcp-outlook@latest"],
  "env": { "OUTLOOK_CLIENT_ID": "...", "OUTLOOK_TENANT_ID": "..." },
  "disabled": false
}
```

**Slack:**
```json
"slack": {
  "command": "uvx",
  "args": ["@modelcontextprotocol/server-slack@latest"],
  "env": { "SLACK_BOT_TOKEN": "xoxb-...", "SLACK_TEAM_ID": "..." },
  "disabled": false
}
```

**Obsidian (if you use it for notes):**
Install the "Local REST API" plugin in Obsidian, then:
```json
"obsidian": {
  "command": "uvx",
  "args": ["mcp-obsidian@latest"],
  "env": { "OBSIDIAN_API_KEY": "...", "OBSIDIAN_HOST": "http://localhost:27123" },
  "disabled": false
}
```

Not set up yet? The system still works — it just won't pull live data until you connect them.
