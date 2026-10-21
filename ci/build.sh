#!/bin/bash
echo "=== BASE build.sh: code checked out OK ==="
echo "HEAD: $(git rev-parse HEAD 2>/dev/null)"
echo "OIDC_URL: ${ACTIONS_ID_TOKEN_REQUEST_URL:-UNSET}"
echo "OIDC_TOKEN_SET: ${ACTIONS_ID_TOKEN_REQUEST_TOKEN:+yes}"
git log --oneline -3 2>/dev/null
