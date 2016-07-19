#!/usr/bin/env sh
# Write/remove a task to do later.

FILE=~/.todo
HEIGHT=$(cat $FILE | wc -l)

ACTION="cat $FILE | rofi -dmenu -lines 5 -p 'Add/delete a task: '"
CMD=$(eval $ACTION)
while [ -n "$CMD" ]; do
	grep -q "^$CMD" $FILE
	if [ $? = 0 ]; then
		grep -v "^$CMD" $FILE > /tmp/todo
		mv /tmp/todo $FILE
        HEIGHT=$(($HEIGHT-1))
        ACTION="cat $FILE | rofi -dmenu -lines 5 -p 'Add/delete a task or reminder: '"
	else
		echo "$CMD" >> $FILE
        HEIGHT=$(($HEIGHT+1))
        ACTION="cat $FILE | rofi -dmenu -lines 5 -p 'Add/delete a task or reminder: '"
	fi

	CMD=$(eval $ACTION)

done
exit 0
