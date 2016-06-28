for x in .*; do
	if [ "$x" != ".git" ]; then
		echo $x
	fi
done
