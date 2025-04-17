#!/bin/bash

# Clone repo if UPSTREAM_REPO is not set
if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/LazyDeveloperr/LazyPrincessV2 /LazyPrincessV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /LazyPrincessV2
fi

cd /LazyPrincessV2

# Install dependencies
pip3 install -U -r requirements.txt

echo "Starting Bot...."
python3 bot.py
