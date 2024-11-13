#!/bin/bash
# Load environment variables from .env
export $(grep -v '^#' .env | xargs)

# Check rate limit before proceeding
rate_limit=$(curl -s -H "Authorization: token $GITHUB_PAT" \
    https://api.github.com/rate_limit | jq '.rate.remaining')

# If rate limit is low, wait until the limit resets
if [[ "$rate_limit" -lt 100 ]]; then
    echo "Approaching rate limit, waiting for reset..."
    reset_time=$(curl -s -H "Authorization: token $GITHUB_PAT" \
        https://api.github.com/rate_limit | jq '.rate.reset')
    sleep $((reset_time - $(date +%s)))
fi

# Make API request using ETag to avoid rate limit
etag=$(curl -s -H "Authorization: token $GITHUB_PAT" \
    -H "Accept: application/vnd.github+json" \
    -H "If-None-Match: \"$stored_etag\"" \
    https://api.github.com/repos/tweag/ghas-poc-demos/dependabot/alerts -D - | grep ETag)

# Make the actual request to fetch the data
response=$(curl -s -H "Authorization: token $GITHUB_PAT" \
    -H "Accept: application/vnd.github+json" \
    -H "If-None-Match: \"$etag\"" \
    https://api.github.com/repos/tweag/ghas-poc-demos/dependabot/alerts)

# Check if the response is valid JSON before passing it to jq
if echo "$response" | jq empty > /dev/null 2>&1; then
    echo "Dependabot alerts received: "
    echo "$response" | jq .
else
    echo "Error: Received invalid JSON or control characters."
    echo "Raw response: $response"
fi

# Store the ETag for the next request
echo "$etag" > etag_store.txt
