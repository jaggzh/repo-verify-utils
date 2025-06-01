# gist-paste -u https://gist.github.com/jaggzh/6b3746475bbde5a077dfaeae793b7d1f
bgbla='[40m'; bgred='[41m'; bggre='[42m'; bgbro='[43m';
bgblu='[44m'; bgmag='[45m'; bgcya='[46m'; bggra='[47m';
bla='[30m'; red='[31m'; gre='[32m'; bro='[33m';
blu='[34m'; mag='[35m'; cya='[36m'; gra='[37m';
bbla='[30;1m'; bred='[31;1m'; bgre='[32;1m'; yel='[33;1m';
bblu='[34;1m'; bmag='[35;1m'; bcya='[36;1m'; whi='[37;1m';
rst='[0m'; inv='[7m'; cll='[2K'; cllr='[K';
cls='[2J'; clsb='[J'; 

bgblae='\033[40m'; bgrede='\033[41m'; bggree='\033[42m'; bgbroe='\033[43m';
bgblue='\033[44m'; bgmage='\033[45m'; bgcyae='\033[46m'; bggrae='\033[47m';
blae='\033[30m'; rede='\033[31m'; gree='\033[32m'; broe='\033[33m';
blue='\033[34m'; mage='\033[35m'; cyae='\033[36m'; grae='\033[37m';
bblae='\033[30;1m'; brede='\033[31;1m'; bgree='\033[32;1m'; yele='\033[33;1m';
bblue='\033[34;1m'; bmage='\033[35;1m'; bcyae='\033[36;1m'; whie='\033[37;1m';
rste='\033[0m'; inve='\033[7m'; clle='\033[2K'; cllre='\033[K';
clse='\033[2J'; clsbe='\033[J';

a24fghex () { # Usage: a24fghex [#]rrggbb
	local hex="${1#\#}" # Remove leading '#' if present
	local r g b
	r=$((16#${hex:0:2})) # Extract and convert red
	g=$((16#${hex:2:2})) # Extract and convert green
	b=$((16#${hex:4:2})) # Extract and convert blue
	a24fg "$r" "$g" "$b"
}
a24bghex () { # Usage: a24bghex [#]rrggbb
	local hex="${1#\#}" # Remove leading '#' if present
	local r g b
	r=$((16#${hex:0:2})) # Extract and convert red
	g=$((16#${hex:2:2})) # Extract and convert green
	b=$((16#${hex:4:2})) # Extract and convert blue
	a24bg "$r" "$g" "$b"
}
a24fg () { # [0-255] Usage: a24fg r g b
	printf '%s' "[38;2;$1;$2;${3}m"
}
a24bg () { # [0-255] Usage: a24fg r g b
	printf '%s' "[48;2;$1;$2;${3}m"
}
ansi_uncolor () {
	bgbla=''; bgred=''; bggre=''; bgbro='';
	bgblu=''; bgmag=''; bgcya=''; bggra='';
	bla=''; red=''; gre=''; bro='';
	blu=''; mag=''; cya=''; gra='';
	bbla=''; bred=''; bgre=''; yel='';
	bblu=''; bmag=''; bcya=''; whi='';
	rst=''; inv=''; cll=''; cllr='';
	cls=''; clsb=''; 
}
