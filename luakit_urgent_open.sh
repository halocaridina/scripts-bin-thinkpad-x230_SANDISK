#!/usr/bin/env bash

hook_name=luakit_urgent_open
herbstclient rule label=$0  class=Luakit tag=8 focus=on hook=$hook_name
# so whenever Luakit shows up, a hook of the following form appears:
#     rule $hook_name ID
# where ID is luakits window id.

{
herbstclient --idle '(bla|reload|rule)' &
hc_pid=$!
echo $hc_pid # pass pid to other subshell
wait $hc_pid
} | {
    read hc_pid # get pid from other subshell
    while read hook p1 p2 ; do
        case "$hook" in
            reload)
                break
                ;;
            rule)
                if [[ "$p1" == "$hook_name" ]] ; then
                    echo "Making $p2 urgent"
                    herbstclient attr clients."$p2".urgent on
                fi
                ;;
        esac
    done
    kill $hc_pid # kill hc immediatly
}
