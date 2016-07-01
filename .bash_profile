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


cd $(dirname `readlink -f ${BASH_SOURCE}`)

git pull
git checkout
./install.sh

cat ./.helloworld

cd -
