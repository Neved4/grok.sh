#!/bin/sh
set -Cefu

usage() {
	printf '%s\n' 'grok.sh [classic | modern | fusion]'
	exit 1
} >&2

table() {
	S='x'    N=''     i='     '
	h=${h:-} j=${j:-$h} p=${p:=}

	unset U
	printf '%s\n' \
		" $h" \
		" $p expression $p foo='V' $p foo='' $p unset foo $p" \
		" $h" \
		" $p \${foo:-y}  $p ${S:-y}$i  $p ${N:-y}$i $p ${U:-y} $i   $p" \
		" $p \${foo-y}   $p ${S-y}$i  $p $i  $p ${U-y} $i   $p" \
		" $p \${foo:=y}  $p ${S:=y}$i  $p ${N:=y}$i $p ${U:=y}$i    $p" \
		" $p \${foo=y}   $p ${S=y}$i  $p ${N=y}$i $p ${U=y} $i   $p" \
		" $p \${foo:?y}  $p ${S:?y}$i  $p <err>  $p <err>$i$p" \
		" $p \${foo?y}   $p ${S?y}$i  $p ${N?y}$i $p <err>$i$p" \
		" $p \${foo:+y}  $p ${S:+y}$i  $p ${N:+y}$i $p ${U:+y}$i    $p" \
		" $p \${foo+y}   $p ${S+y}$i  $p ${N+y}$i $p ${U+y}$i    $p" \
		" $h"
}

main() {
	[ $# -gt 1 ] && usage

	S='x' N='' i='     '

	case ${1:-fusion} in
	classic)
		h='+------------+---------+--------+-----------+'
		p='|'
		table
		;;
	modern)
		h='-------------------------------------------'
		table
		;;
	fusion)
		h='───────────────────────────────────────────'
		j='━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━'
		table | awk -f "${0%/*}/filter.awk"
		return 0
		;;
	*)
		usage ;;
	esac
}

main "$@"
