for x in .*; do
	if [ "$x" != ".git" ]; then
		ln -sf "~/.rc/$x" "~/$x"
	fi
done
