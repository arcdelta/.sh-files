# .sh-files

**Sh**ome **sh**ell junk. Thi**sh**'**sh** for my**sh**elf, becau**sh**e I can't remember **sh**i~, and thi**sh**, **sh**omeday, may **sh**ave me a couple of hour**sh**...

## Setup

Someday I'll write a Makefile for doing all this cumbersome work, but for now...

#### Prerequisites

- `zsh`, though good old `bash` with `.bash_profile` will do.
- The `coreutils` package installed on macOS (`brew install coreutils`).
- This repository cloned as `.sh-files` to `~`:

```bash
$ cd ~ && git clone https://github.com/arcdelta/.sh-files.git
```

#### How do I use dem aliases and stuff?

You can either copy-paste the code below into your `.zshrc`:

```bash
# Sh-files injection
export SHFILES="$HOME/.sh-files"

source "$SHFILES/loader.sh"
include $SHFILES/rc \*
```

or `echo` it there directly from shell:

```bash
$ echo '# Sh-files injection
export SHFILES="$HOME/.sh-files"

source "$SHFILES/loader.sh"
include $SHFILES/rc \*' >> ~/.zshrc
```

**Note**. If you're not sure what one or another alias stands for, you can simply use `which <aliases>`.

```bash
$ which gcm gai
gai: aliased to git add --interactive
gcm: aliased to git commit -m
```

#### Where should I place dem binaries, bruh?

For convenient usage it's advised to place them inside `/usr/local/bin`, `$HOME/bin` or `$HOME/.local/bin`. There's no consensus on this topic, but I'm personally leaning towards the last option. Anyway, don't forget to add the directory of your choice to the `PATH` environment variable (if it's not there already).

#### What do I do to use dis sleek commit hack?

Let's say you decided to go with the `$HOME/.local/bin` option. Check if `$HOME/.local/bin` is already in the `PATH`:

```bash
$ echo $PATH | grep $HOME/.local/bin
```

If a string with `$HOME/.local/bin` in it is returned, then you're good to go and can either create a symlink to a binary, or manually put it into `$HOME/.local/bin`.

> If nothing is returned, you can add `$HOME/.local/bin` into your `.zshrc` like that:
>
> ```bash
> $ printf '\n# PATH\nexport PATH="$HOME/.local/bin:$PATH"\n' >> ~/.zshrc
> ```
>
> or use the default editor (if it's not set, it'll fallback to `vi`):
>
> ```bash
> $ "${EDITOR:-vi}" ~/.zshrc
> ```
>
> or, if you're a wuss, just use vscode:
>
> ```bash
> $ code ~/.zshrc
> ```

Then, hold yourself firmly in the `.sh-files` directory:

```bash
$ pwd
/Users/vm/.sh-files
```

Create a symlink:

```bash
$ ln -s `pwd`/bin/cm $HOME/.local/bin/fake-the-date
```

Make it executable, then source the config or reopen terminal:

```bash
$ chmod +x $HOME/.local/bin/fake-the-date
$ source ~/.zshrc
```

Test it:

```bash
$ fake-the-date
cm: You should specify the commit message and (optionally) the date

Usage: cm [message] [[date]]

Examples:
$ cm 'Plant a tree' '2 days ago'
$ cm 'Create yet another framework' '1 hour ago'
$ cm 'Raise a kid' '2019-11-11 12:35:18'
```
