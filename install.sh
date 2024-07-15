#!/bin/bash

# Define directories.
DOTFILES_DIR="$HOME/.dotfiles"
BIN_DIR="$DOTFILES_DIR/bin"
LOCAL_BIN_DIR="$HOME/.local/bintest"

# Links a file if it doesn't already exist in the target directory. Optionally
# makes the target file executable.
link() {
  local source="$1"
  local target="$2"
  local make_executable="${3:-false}"

  if [ -e "$target" ]; then
    echo "File $target already exists. Skipping."
  else
    ln -s "$source" "$target"

    # Make the target executable if needed.
    if [ "$make_executable" = true ]; then
      chmod +x "$target"
      echo "Linked $source to $target and made executable."
    else
      echo "Linked $source to $target."
    fi
  fi
}

# ------------------------------------------------------------------------------

echo "[Linking zsh files]"
echo

link "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc.test"
link "$DOTFILES_DIR/.zshenv" "$HOME/.zshenv.test"
link "$DOTFILES_DIR/.zprofile" "$HOME/.zprofile.test"

echo

# ------------------------------------------------------------------------------

echo "[Linking binaries]"
echo

# Create the target bin directory if it doesn't exist.
mkdir -p "$LOCAL_BIN_DIR"

# Link binaries.
for bin in "$BIN_DIR"/*; do
  if [ -f "$bin" ]; then
    target="$LOCAL_BIN_DIR/$(basename "$bin")"

    link "$bin" "$target" true
  fi
done

echo

# ------------------------------------------------------------------------------

echo "[Touching some files]"
echo

touch "$HOME/.hushlogin"

echo

# ------------------------------------------------------------------------------

echo "Done."
