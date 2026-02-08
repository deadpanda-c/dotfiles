#!/bin/bash

# get .env var file
if [ -f .env ]; then
    source .env
fi

get_quote() {
  res=$(curl -s "$URL?categories=$CATEGORIES" -H "X-Api-Key: $API_KEY")
  quote=$(echo "$res" | jq -r '.[0].quote')
  author=$(echo "$res" | jq -r '.[0].author')
  echo -e "\e[1;37m$quote\e[0m\n\e[3;37m$author\e[0m"
}

check_connection() {
  if ! ping -c 1 -q -W 1 google.com &> /dev/null; then
    exit 1
  fi
}

check_connection
get_quote
