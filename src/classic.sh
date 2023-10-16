#!/bin/sh
set -Cefu

S='V' N='' i='     '
h='+------------+---------+--------+-----------+'

unset U

printf '%s\n' "$h" \
	"| expression | foo='V' | foo='' | unset foo |" \
	"$h" \
	"| \${foo:-x}  | ${S:-x}$i  | ${N:-x}$i | ${U:-x} $i   |" \
	"| \${foo-x}   | ${S-x}$i  | $i  | ${U-x} $i   |" \
	"| \${foo:=x}  | ${S:=x}$i  | ${N:=x}$i | ${U:=x}$i    |" \
	"| \${foo=x}   | ${S=x}$i  | ${N=x}$i | ${U=x} $i   |" \
	"| \${foo:?x}  | ${S:?x}$i  | <err>  | <err>$i|" \
	"| \${foo?x}   | ${S?x}$i  | ${N?x}$i | <err>$i|" \
	"| \${foo:+x}  | ${S:+x}$i  | ${N:+x}$i | ${U:+x}$i    |" \
	"| \${foo+x}   | ${S+x}$i  | ${N+x}$i | ${U+x}$i    |" \
	"$h"
