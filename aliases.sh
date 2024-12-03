# Upward navigation
alias ~="cd ~"        # -> Go home
alias ..='cd ../'     # -> Go 1 level up
alias ...='cd ../../' # -> Go 2 levels up

# General aliases
alias cls="clear && printf '\e[3J'" # -> I'm used to Windows way of clearing terminal
alias open='open -a Finder ./'      # -> Open current directory in Finder
alias ls="gls -AGlhpX --color=auto" # -> GNU ls (long listing)
alias lc="gls -AGhpX --color=auto"  # -> GNU ls (column listing)
alias date="gdate"                  # -> GNU date

# Repository status
alias gs="git status" # -> Status

# Pushing/pulling in the current branch
alias gf="git fetch"                     # -> Fetch
alias gl="git pull"                      # -> Pull
alias gp="git push"                      # -> Push
alias gpf="git push --force"             # -> Push (force, unsafe)
alias gpfl="git push --force-with-lease" # -> Push (force, safer)

# Resetting staged changes
alias gr="git reset --"             # -> Unstage specified files
alias gra="git reset"               # -> Unstage everything
alias grl="git reset --soft HEAD~1" # -> Softly reset the last commit
alias grc="git reset --soft"        # (Hash) -> Softly reset specified commit

# Staging changes
alias gai="git add --interactive" # -> Stage changes interactively
alias gaa="git add ."             # -> Stage all changes
alias gam="git add"               # (...Files) -> Stage specified files

# Committing changes
alias gcd="git commit"    # -> Commit staged changes using the default editor
alias gcm="git commit -m" # (Message) -> Commit staged changes inline

# Switching to branches/commits
alias gch="git checkout"    # (Branch/Hash) -> Switch to a branch or commit
alias gcb="git checkout -b" # (Branch) -> Create a new branch and switch to it

# Pretty git log
GIT_LOG_FORMAT="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
alias glg="git log --graph --pretty=format:'$GIT_LOG_FORMAT' --abbrev-commit"

# Show all aliases defined in this file
alias aliases="bat ~/.dotfiles/aliases.sh"
