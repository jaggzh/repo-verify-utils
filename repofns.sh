#!/bin/bash
{ [[ -f ansi.sh ]] && . ./ansi.sh; } || { [[ -f ../ansi.sh ]] && . ../ansi.sh; }
asection() { echo "$bgblu${yel}$@$rst"; }
anotice() { echo "$bcya$@$rst"; }
awarn() { echo "$yel$@$rst"; }
aerr() { echo "$bgred${yel}$@$rst"; }

a_cmd=$bcya
a_cmd1=$bcya
a_cmd2=$bmag
a_cmd3=$bgre

##

github_env_verify() {
	local err=0
	if [[ -z "$GH_TOKEN" ]]; then
		awarn "Empty env var GH_TOKEN" >&2
		err=1
	fi
	if [[ -z "$GH_LOGIN" ]]; then
		awarn "Empty env var GH_LOGIN" >&2
		err=1
	fi
	# If you source this script and end up calling github_env_verify, we don't
	# want it to exit our shell:
	if [[ "$err" != 0 ]]; then
		aerr "Aborting. (err=$err)"
		if [[ $_ != $0 ]]; then
			return 1
		else
			exit 1
		fi
	fi
}
