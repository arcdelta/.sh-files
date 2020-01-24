## Loader, i.e. "sourcer"

# (Directory, Glob) -> Source all files by {Glob} inside a given directory {Directory}
#
# Usage (inside scripts):
# source ~/.shcripts/loader.sh   # Source `loader` to be able to use `include`
# include ~/some-dir \*      # Source all `Glob` inside given `Directory`
# include ~/some-dir \*\.sh  # Source all `Glob` files inside given `Directory`
# include ~/some-dir '*.sh'  # You don't have to escape `Glob`
function include () {
  PATHS="$(find $1 -type f -name $2 -print)"
  FILES=("${(f)PATHS}")

  for file in "${FILES[@]}"; do
    source $file
  done
}
