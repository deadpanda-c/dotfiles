#!/bin/bash

INTERVAL=86400

# check for env file loaded as parameter
if [[ -f $1 ]]; then
  source $1
fi

get_quote() {
  res=$(curl -s "$URL?categories=$CATEGORIES" -H "X-Api-Key: $API_KEY")
  quote=$(echo "$res" | jq -r '.[0].quote')
  author=$(echo "$res" | jq -r '.[0].author')
  echo -e "\e[1;37m$quote\e[0m\n\e[3;37m$author\e[0m"
}

check_connection() {
  if ! ping -c 1 -q -W 1 google.com &> /dev/null; then
    return 1
  fi
  return 0
}

while true; do
  if [[ $(check_connection) -eq 0 ]]; then
    get_quote
  fi
  sleep $INTERVAL
done
