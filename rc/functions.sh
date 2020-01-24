## Search functions/aliases

# (Name) -> Find file under the current directory
function f () { find . -name "$@"; }

# (Prefix) -> Find file which name starts with a given string
function ffs () { find . -name "$@"'*'; }

# (Suffix) -> Find file which name ends with a given string
function ffe () { find . -name '*'"$@"; }
