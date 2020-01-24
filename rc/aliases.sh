# Upward navigation
alias ~="cd ~"         # Go home
alias ..='cd ../'      # Go 1 level up
alias ...='cd ../../'  # Go 2 levels up

# General aliases
alias cls="clear"                         # I'm used to Windows way of clearing terminal
alias f='open -a Finder ./'               # Open current directory in Finder
alias chrome="open -a \"Google Chrome\""  # Open in Chrome
alias ls="gls -AGlhpX --color=auto"       # GNU ls (long listing)
alias lc="gls -AGhpX --color=auto"        # GNU ls (column listing)
alias date="gdate"                        # GNU date

# NPM
alias npm-globals="npm list -g --depth=0"  # List packages installed globally
alias npm-locals="npm list --depth=0"      # List packages installed locally (current package)
