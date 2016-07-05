curl -X POST --data-urlencode 'payload={"channel":"#5shell7","username":"5st7のMacBookPro","text":"5st7がシェルを起動しました。","icon_emoji":":5st7:"}' https://hooks.slack.com/services/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 l

for g in `seq 0 9`; do
	for s in `seq 0 9`; do
		for c in `seq 1 6`; do
			printf "\e[1;3${c}m"
			figlet -c "${g}st${s}"
			printf "\e[0m"
		done
	done
done

cowsay -f ghostbusters hello 

alias ls='afplay ~/Documents/.suiso.mp3 & ls'
alias cd='afplay ~/Documents/.push.mp3 & cd'
alias nano='afplay ~/Documents/.push.mp3; afplay ~/Documents/.suiso.mp3; nano'


cd $(dirname `readlink ${BASH_SOURCE}`) && git pull && git checkout && ./install.sh
cd -

clear
cat $(dirname `readlink ${BASH_SOURCE}`)/.helloworld

sleep 1
afplay ~/Documents/.push.mp3 &
clear


