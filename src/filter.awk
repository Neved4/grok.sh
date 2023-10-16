#!/usr/bin/awk -f

BEGIN {
	reset   = "\033[0m"
	under   = "\033[4m"
	red     = "\033[31m"
	green   = "\033[32m"
	yellow  = "\033[33m"
	blue    = "\033[34m"
	magenta = "\033[35m"
	cyan    = "\033[36m"
	bblack  = "\033[90m"
}

{
	if (NR < 3) {
		gsub(/x/, under green "&" reset)
		gsub(/<err>/, red "&" reset)
		gsub(/\'/, yellow "&" reset)
		gsub(/unset/, magenta "&" reset)
		gsub(/=/, red "&" reset)
	}

	if (NR > 2) {
		gsub(/x/, green "&" reset)
		gsub(/err/, under red "&" reset)
		gsub(/y/, blue "&" reset)
		gsub(/:|\+|-|=|\?/, red "&" reset)
		gsub(/\'/, yellow "&" reset)
		gsub(/\{|\}|\$/, magenta "&" reset)
	}

	print
}
