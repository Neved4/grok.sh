![Shell Script](https://img.shields.io/badge/Shell_Script-9DDE66?logo=gnubash&logoColor=000&style=for-the-badge)
[![POSIX.1%2D2017](https://img.shields.io/badge/POSIX.1&#8209;2017-6A737D?labelColor=6A737D&style=for-the-badge)](https://www.google.com)

# `grok.sh` - The infamously hard to grok table!

##### Original by [Mike Clark].

> _Now in **only ~~`957`~~ `530 bytes`**! The classic reborn! AT&T UNIX System V-friendly!_

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

###### Generated using [agg], colors by [kanagawa.nvim].

### Supported shells

|      Shell | Version       | Supported |
| ---------: | :------------ | :-------- |
|   [`bash`] | `5.2.15`      | Yes       |
|   [`dash`] | `0.5.12`      | Yes       |
|  [`ksh93`] | `93u+m/1.0.7` | Yes       |
|   [`mksh`] | `59c`         | Yes       |
|   [`oksh`] | `7.3`         | Yes       |
|   [`posh`] | `0.14.1`      | Yes[^1]   |
|   [`yash`] | `2.55`        | Yes       |
|    [`zsh`] | `5.9`         | Yes       |
| [`elvish`] | `0.19.2`      | No        |
|   [`fish`] | `3.6.1`       | No        |
|    [`nsh`] | `0.4.2`       | No        |
|     [`nu`] | `0.85.05`     | No        |
|   [`tcsh`] | `6.21.00`     | No        |

## License

`grok.sh` is licensed under the terms of the MIT License.

See the [LICENSE](LICENSE) file for details.

[agg]: https://github.com/asciinema/agg
[kanagawa.nvim]: https://github.com/rebelot/kanagawa.nvim
[Mike Clark]: https://stackoverflow.com/a/67261832
[POSIX.1-2017: Parameter Expansion]: https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_06_02
