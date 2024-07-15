. "$HOME/.cargo/env"

# Force language & encoding.
export LC_ALL=en_US.UTF-8

# N (Node version manager) settings.
export N_PREFIX=$HOME/.n
export N_PRESERVE_NPM=1

# Node settings.
export NODE_REPL_HISTORY='' # Disable REPL history.

# Less settings.
export LESSHISTFILE=- # Disable generating .lesshst file.

# Path overrides.
export PATH=$N_PREFIX/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
