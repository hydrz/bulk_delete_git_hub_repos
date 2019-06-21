GITHUB_SECRET="your-github-personal-access-token"

REPOS=(
    "username/repo1"
    "username/repo2"
    "username/repo3"
    "username/repo4"
)

function git_repo_delete() {
    curl -vL \
        -H "Authorization: token $GITHUB_SECRET" \
        -H "Content-Type: application/json" \
        -X DELETE https://api.github.com/repos/$1 |
        jq .
}

for repo in $REPOS; do (git_repo_delete "$repo"); done
