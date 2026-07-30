#!/bin/bash
if [ ! -d ".git" ]; then
    git init
    git remote add origin https://github.com/Thahir747/OpenWeather-Postman
fi

git add .
git commit -m "Updated on: $(TZ="Asia/Kolkata" date '+%Y-%m-%d %I:%M:%S %p IST')"

git pull --rebase origin main
# Push changes
git push origin main