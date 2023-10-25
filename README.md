![Shell Script](https://img.shields.io/badge/Shell_Script-9DDE66?logo=gnubash&logoColor=000&style=for-the-badge)
[![POSIX.1%2D2017](https://img.shields.io/badge/POSIX.1&#8209;2017-6A737D?labelColor=6A737D&style=for-the-badge)](https://www.google.com)

# `grok.sh` - *The infamously hard to grok table!*

##### Original by [Mike Clark].

> _Now in **only ~~`957`~~ [`645 bytes`]**! The classic reborn! AT&T UNIX System V-friendly!_

Evaluates the _Parameter Substitution_ table in: [POSIX.1-2017: Parameter Expansion]:

```console
$ grok.sh
-------------------------------------------
 expression   foo='V'   foo=''   unset foo
-------------------------------------------
 ${foo:-x}    V         x        x
 ${foo-x}     V                  x
 ${foo:=x}    V         x        x
 ${foo=x}     V         x        x
 ${foo:?x}    V         <err>    <err>
 ${foo?x}     V         x        <err>
 ${foo:+x}    x         x        x
 ${foo+x}     x         x        x
-------------------------------------------
```

###### Generated using [`agg`], colors by [`kanagawa.nvim`].

### Supported shells

|      Shell | Version       | Supported |
| ---------: | :------------ | :-------- |
|   [`bash`] | `5.2.15`      | Yes       |
|   [`dash`] | `0.5.12`      | Yes       |
|  [`ksh93`] | `93u+m/1.0.7` | Yes       |
|   [`mksh`] | `59c`         | Yes       |
|   [`oksh`] | `7.3`         | Yes       |
|    [`osh`] | `0.18.0`      | Yes       |
|   [`posh`] | `0.14.1`      | Yes       |
|   [`yash`] | `2.55`        | Yes       |
|    [`zsh`] | `5.9`         | Yes       |
| [`elvish`] | `0.19.2`      | No        |
|   [`fish`] | `3.6.1`       | No        |
|   [`tcsh`] | `6.21.00`     | No        |
|    [`nsh`] | `0.4.2`       | No        |
|     [`nu`] | `0.85.05`     | No        |
|    [`ysh`] | `0.18.0`      | No        |

## License

`grok.sh` is licensed under the terms of the MIT License.

See the [LICENSE](LICENSE) file for details.

[`645 bytes`]: ./src/classic.sh
[`agg`]: https://github.com/asciinema/agg
[`kanagawa.nvim`]: https://github.com/rebelot/kanagawa.nvim
[Mike Clark]: https://stackoverflow.com/a/67261832
[POSIX.1-2017: Parameter Expansion]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_06_02

[`bash`]: https://git.savannah.gnu.org/cgit/bash.git/
[`dash`]: https://git.kernel.org/pub/scm/utils/dash/dash.git
[`ksh93`]: https://github.com/ksh93/ksh
[`mksh`]: https://github.com/MirBSD/mksh
[`osh`]: https://www.oilshell.org/cross-ref.html?tag=OSH#OSH
[`oksh`]: https://github.com/ibara/oksh
[`posh`]: https://salsa.debian.org/clint/posh
[`yash`]: https://github.com/magicant/yash
[`zsh`]: https://github.com/zsh-users/zsh
[`elvish`]: https://github.com/elves/elvish
[`fish`]: https://github.com/fish-shell/fish-shell
[`nsh`]: https://github.com/nuta/nsh
[`nu`]: https://github.com/nushell/nushell
[`tcsh`]: https://github.com/freebsd/freebsd-src/tree/main/bin/csh
[`ysh`]: https://www.oilshell.org/cross-ref.html?tag=YSH#YSH
