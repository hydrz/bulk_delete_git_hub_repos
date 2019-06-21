# bulk_delete_git_hub_repos

Bulk-delete GitHub Repositorys

1. Get a Github API token (Settings -> Developer settings -> Personal Access Tokens)

2. Copy all your repos (Settings -> Repositories) and paste them into your favorite text editor

3. Use regex to filter them down to just the ones you don’t want. For me that meant running the following commands in Vscode:

   - Search for demo/[a-zA-Z0-9-_]\* , i.e., where each repo was forked from: demo/

   - Use Alt+L to select all matched

4. Modify run.sh and Run it

```
sh run.sh
```
