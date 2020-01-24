## GIT aliases

# I had to make these to ease working with git in projects that use commitizen,
# since it's kind of awkward to work both in a client like Fork and in terminal.

# Commitizen, actually related to both git and npm, but w/e
alias cz="git-cz"  # -> Run Commitizen CLI

# Repository status
alias gs="git status"  # -> Status

# Pushing/pulling in the current branch
alias gl="git pull"  # -> Pull
alias gp="git push"  # -> Push

# Resetting staged changes
alias gr="git reset --"              # -> Unstage specified files
alias gra="git reset"                # -> Unstage everything
alias grl="git reset --soft HEAD~1"  # -> Softly reset the last commit
alias grc="git reset --soft"         # (Hash) -> Softly reset specified commit

# Staging changes
alias gai="git add --interactive"  # -> Stage changes interactively
alias gaa="git add ."              # -> Stage all changes
alias gam="git add"                # (...Files) -> Stage specified files

# Committing changes
alias gcd="git commit"     # -> Commit staged changes using the default editor
alias gcm="git commit -m"  # (Message) -> Commit staged changes inline

# Switching to branches/commits
alias gch="git checkout"     # (Branch/Hash) -> Switch to a branch or commit
alias gcb="git checkout -b"  # (Branch) -> Create a new branch and switch to it

# Pretty git log
GIT_LOG_FORMAT="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
alias glg="git log --graph --pretty=format:'$GIT_LOG_FORMAT' --abbrev-commit"
