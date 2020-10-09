#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

cd public

if [ -n "$GITHUB_AUTH_SECRET" ]
then
    echo -e "Creating credentials"
    touch ~/.git-credentials
    chmod 0600 ~/.git-credentials
    echo $GITHUB_AUTH_SECRET > ~/.git-credentials    git config credential.helper store
    git config user.email "filbar-music-bot@users.noreply.github.com"
    git config user.name "filbar-music-bot"
fi

echo -e "Git add..."
git add .
echo -e "Git commit..."
git commit -m "Rebuild site"
echo -e "Git push..."
git push --force origin HEAD:main
echo -e "Git done..."
