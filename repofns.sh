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
