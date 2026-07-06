#!/bin/sh

curl -fsSL https://gh.io/copilot-install | sh
curl -fsSL https://claude.ai/install.sh | sh
curl -fsSL https://chatgpt.com/codex/install.sh | CODEX_NON_INTERACTIVE=1 sh

curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh | sh
