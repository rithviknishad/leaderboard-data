: "${LEADERBOARD_REPO:=https://github.com/coronasafe/leaderboard.git}"

rm vercel.json

git init
git remote add --mirror=fetch origin ${LEADERBOARD_REPO}
git pull origin main

ln -s ../ ./data-repo

