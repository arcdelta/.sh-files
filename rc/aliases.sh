# Upward navigation
alias ~="cd ~"         # Go home
alias ..='cd ../'      # Go 1 level up
alias ...='cd ../../'  # Go 2 levels up

# General aliases
alias cls="clear"                    # I'm used to Windows way of clearing terminal
alias f='open -a Finder ./'          # Open current directory in Finder
alias ls="gls -AGlhpX --color=auto"  # GNU ls (long listing)
alias lc="gls -AGhpX --color=auto"   # GNU ls (column listing)
alias date="gdate"                   # GNU date

# NPM
alias npm-globals="npm list -g --depth=0"  # List packages installed globally
alias npm-locals="npm list --depth=0"      # List packages installed locally (current package)

# GIT aliases
#
# I had to make these to ease working with git in projects that use commitizen,
# since it's kind of awkward to work both in a client like Fork and in terminal.

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
alias gai="git add --interactive"  # -> Stage changes/files interactively
alias gaa="git add ."              # -> Stage all changes/files
alias gam="git add"                # (...Files) -> Stage specified files

# Committing changes
alias gcm="git commit -m"  # (Message) -> Commit staged changes/files

# Switching to branches/commits
alias gch="git checkout"     # (Branch/Hash) -> Switch to a branch or commit
alias gcb="git checkout -b"  # (Branch name) -> Create a new branch and switch to it
