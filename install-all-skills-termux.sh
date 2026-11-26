#!/data/data/com.termux/files/usr/bin/bash
# Curated Agent Skills installer for Termux.
# Installs reviewed SKILL.md packs globally into one selected coding-agent runtime.

set -uo pipefail

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; BLUE='\033[0;34m'; RESET='\033[0m'

say()  { printf "%b\n" "$*"; }
fail() { say "${RED}ERROR:${RESET} $*" >&2; exit 1; }

say "${BLUE}Agent Skills — Termux global installer${RESET}"
say "This installs Skills only. It does not install coding agents, SDKs, MCP servers, browsers, or API keys."
say ""

# Prerequisites
command -v node >/dev/null 2>&1 || fail "Node.js is missing. Run: pkg install nodejs npm git -y"
command -v npm  >/dev/null 2>&1 || fail "npm is missing. Run: pkg install npm -y"
command -v npx  >/dev/null 2>&1 || fail "npx is missing. Run: pkg install npm -y"
command -v git  >/dev/null 2>&1 || fail "Git is missing. Run: pkg install git -y"

node -e 'const [a,b]=process.versions.node.split(".").map(Number); if(a<22 || (a===22 && b<20)){console.error("Node.js 22.20.0 or newer is required. Current: "+process.versions.node);process.exit(1)}' || exit 1

say "${GREEN}Node.js $(node --version)${RESET}"
say "npm $(npm --version)"
say "Git $(git --version)"

# Select the global destination. The selected runtime should be installed separately.
say ""
say "Choose where to install the Skills:"
say "  1) codex         — OpenAI Codex CLI (~/.agents/skills)"
say "  2) gemini-cli    — Gemini CLI (~/.gemini/skills)"
say "  3) opencode      — OpenCode (~/.config/opencode/skills)"
say "  4) claude-code   — Claude Code (~/.claude/skills)"
say "  5) github-copilot— GitHub Copilot CLI (~/.copilot/skills)"
say "  6) universal     — shared Agent Skills path (~/.config/agents/skills)"
say "  7) custom        — enter another supported skills CLI agent id"
read -r -p "Enter choice [1-7]: " choice

case "$choice" in
  1) AGENT="codex"; BIN="codex" ;;
  2) AGENT="gemini-cli"; BIN="gemini" ;;
  3) AGENT="opencode"; BIN="opencode" ;;
  4) AGENT="claude-code"; BIN="claude" ;;
  5) AGENT="github-copilot"; BIN="copilot" ;;
  6) AGENT="universal"; BIN="" ;;
  7) read -r -p "Enter exact --agent id from skills CLI docs: " AGENT; BIN="" ;;
  *) fail "Invalid choice." ;;
esac

[[ -n "$AGENT" ]] || fail "Agent id cannot be empty."

if [[ -n "$BIN" ]] && ! command -v "$BIN" >/dev/null 2>&1; then
  say "${YELLOW}Warning:${RESET} '$BIN' is not installed or not on PATH."
  say "Skills can still be stored in its global directory, but that runtime cannot use them until it is installed."
  read -r -p "Continue anyway? [y/N]: " proceed
  [[ "$proceed" == "y" || "$proceed" == "Y" ]] || exit 0
fi

say ""
say "Target: ${GREEN}${AGENT}${RESET}"
say "Scope: global"
say "Sources: 14 curated repositories / 131 selected Skills"
read -r -p "Start installation? [y/N]: " confirm
[[ "$confirm" == "y" || "$confirm" == "Y" ]] || { say "Cancelled. Nothing installed."; exit 0; }

LOG_DIR="$HOME/.local/share/skills-install/logs"
mkdir -p "$LOG_DIR" || fail "Cannot create log directory: $LOG_DIR"
LOG="$LOG_DIR/install-$(date +%Y%m%d-%H%M%S).log"
SUCCESS=0
FAILED=0
FAILED_GROUPS=()

install_group() {
  local label="$1"; shift
  say ""
  say "${BLUE}>>> $label${RESET}"
  say "Logging to: $LOG"
  if npx --yes skills@latest add "$@" --global --agent "$AGENT" --yes 2>&1 | tee -a "$LOG"; then
    SUCCESS=$((SUCCESS + 1))
    say "${GREEN}OK:${RESET} $label"
  else
    local rc=$?
    FAILED=$((FAILED + 1))
    FAILED_GROUPS+=("$label (exit $rc)")
    say "${RED}FAILED:${RESET} $label (exit $rc) — continuing to next source"
  fi
}

# 01 — Addy Osmani: software engineering
install_group "Addy Osmani — Engineering" addyosmani/agent-skills --skill spec-driven-development --skill planning-and-task-breakdown --skill incremental-implementation --skill source-driven-development --skill frontend-ui-engineering --skill api-and-interface-design --skill test-driven-development --skill browser-testing-with-devtools --skill debugging-and-error-recovery --skill code-review-and-quality --skill code-simplification --skill security-and-hardening --skill performance-optimization --skill accessibility-engineering --skill git-workflow-and-versioning --skill ci-cd-and-automation --skill documentation-and-adrs --skill observability-and-instrumentation --skill shipping-and-launch

# 02 — Supabase
install_group "Supabase" supabase/agent-skills --skill supabase --skill supabase-postgres-best-practices

# 03 — Cloudflare
install_group "Cloudflare" cloudflare/skills --skill cloudflare --skill agents-sdk --skill durable-objects --skill wrangler --skill workers-best-practices --skill web-perf

# 04 — Neon
install_group "Neon" neondatabase/agent-skills --skill neon --skill neon-postgres --skill neon-functions --skill neon-ai-gateway --skill neon-realtime --skill neon-object-storage

# 05 — Prisma
install_group "Prisma" prisma/skills --skill prisma-cli --skill prisma-upgrade-v7 --skill prisma-mongodb-upgrade --skill prisma-client-api --skill prisma-driver-adapter-implementation --skill prisma-orm-setup --skill prisma-postgres-setup --skill prisma-compute

# 06 — Docker stable core
install_group "Docker" docker/skills --skill docker-project-foundations --skill docker-build-strategies --skill docker-compose-patterns --skill docker-destructive-guardrails

# 07 — Callstack React Native
install_group "Callstack React Native" callstackincubator/agent-skills --skill react-native-best-practices --skill react-navigation --skill react-native-tv-best-practices --skill create-react-native-library --skill upgrading-react-native --skill github-actions --skill react-native-testing --skill agent-device --skill dogfood --skill assess-react-native-migration --skill react-native-brownfield-migration

# 08 — Flutter and Dart
install_group "Flutter and Dart" flutter/agent-plugins --skill flutter-build-responsive-layout --skill flutter-fix-layout-issues --skill flutter-apply-architecture-best-practices --skill flutter-setup-declarative-routing --skill flutter-implement-json-serialization --skill flutter-add-widget-test --skill flutter-add-integration-test --skill flutter-setup-localization --skill flutter-use-http-package --skill flutter-add-widget-preview --skill dart-run-static-analysis --skill dart-add-unit-test --skill dart-fix-runtime-errors --skill dart-resolve-package-conflicts --skill dart-generate-test-mocks

# 09 — Kotlin
install_group "Kotlin" Kotlin/kotlin-agent-skills --skill kotlin-tooling-kotlin-toolchain --skill kotlin-tooling-agp9-migration --skill kotlin-tooling-java-to-kotlin --skill kotlin-backend-jpa-entity-mapping

# 10 — Firebase
install_group "Firebase" firebase/skills --skill firebase-basics --skill firebase-firestore --skill firebase-analytics --skill firebase-crashlytics --skill firebase-auth-basics --skill firebase-hosting-basics --skill firebase-ai-logic-basics --skill firebase-app-hosting-basics --skill firebase-data-connect-basics --skill firebase-remote-config-basics --skill firebase-security-rules-auditor --skill firestore-rules-creation --skill extension-to-functions-codebase

# 11 — MongoDB
install_group "MongoDB" mongodb/agent-skills --skill mongodb --skill mongodb-connection --skill mongodb-schema-design --skill mongodb-natural-language-querying --skill mongodb-query-optimizer --skill mongodb-search-and-ai

# 12 — Grafana observability
install_group "Grafana" grafana/skills --skill grafana-oss --skill dashboarding --skill promql --skill alerting-irm --skill opentelemetry --skill loki --skill tempo --skill prometheus --skill testing

# 13 — Wshobson AI, backend, security, analytics
install_group "Wshobson" wshobson/agents --skill langchain-architecture --skill prompt-engineering-patterns --skill rag-implementation --skill llm-evaluation --skill api-design-principles --skill architecture-patterns --skill async-python-patterns --skill python-testing-patterns --skill python-performance-optimization --skill github-actions-templates --skill secrets-management --skill stride-analysis-patterns --skill threat-mitigation-mapping --skill design-system-patterns --skill mobile-android-design --skill kpi-dashboard-design --skill data-storytelling --skill before-you-build --skill data-quality-frameworks --skill dbt-transformation-patterns --skill openapi-spec-generation --skill changelog-automation --skill architecture-decision-records --skill wcag-audit-patterns --skill screen-reader-testing

# 14 — Vercel React and web quality
install_group "Vercel React and Web" vercel-labs/agent-skills --skill react-best-practices --skill web-design-guidelines --skill composition-patterns

say ""
say "${BLUE}>>> Final verification${RESET}"
npx --yes skills@latest ls -g -a "$AGENT" 2>&1 | tee -a "$LOG"

say ""
say "${GREEN}Completed groups: $SUCCESS${RESET}"
say "${RED}Failed groups: $FAILED${RESET}"
if (( FAILED > 0 )); then
  say "${YELLOW}Groups needing retry:${RESET}"
  printf ' - %s\n' "${FAILED_GROUPS[@]}"
fi
say "Log file: $LOG"
say "To check updates later: npx skills check"
say "To update global Skills later: npx skills update -g"
say "No Skill scripts or MCP servers were executed by this installer."

exit 0