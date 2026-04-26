#!/usr/bin/env bash
set -euo pipefail

PROJECT_NAME="${CF_PAGES_PROJECT_NAME:-ebikemedia}"
BRANCH_NAME="${CF_PAGES_BRANCH:-main}"

npx wrangler pages deploy public --project-name "$PROJECT_NAME" --branch "$BRANCH_NAME"
