#!/bin/bash
if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/Thahir747/OpenWeather-Postman
fi

git add .
git commit -m "Updated on: $(date '+%Y-%m-%d %H:%M:%S')"
git pull --rebase origin main
# Push changes
git push origin main