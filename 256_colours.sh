#!/bin/bash
# Outputs all 256 colours in the terminal

for code in {0..255}
do
	output="$output\e[38;5;${code}m$(printf %03d $code) "

	if [[ $code -ge 15 && $((($code - 15) % 12)) -eq 0 ]]
	then
		output="$output\n"
	fi
done

echo -en $output
