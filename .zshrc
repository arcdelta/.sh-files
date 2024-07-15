# Autoloads
autoload -Uz add-zsh-hook
autoload -U colors && colors
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

# Simplify navigation a bit.
setopt auto_cd

# History settings.
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

setopt EXTENDED_HISTORY        # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST  # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS       # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS    # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS        # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE       # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS       # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY           # Share history between all sessions.

# Style prompt a bit.
PS1="%F{074}%~%f %F{242}%B|>>%b%f "

# Enable prefix-based completion.
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Aliases.
. ~/.dotfiles/aliases.sh

# Opam configuration.
[[ ! -r ~/.opam/opam-init/init.zsh ]] || . ~/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
