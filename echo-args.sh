#!/bin/bash
# @Function
# print arguments in human and debug friendly style.
#
# @online-doc https://github.com/oldratlee/useful-scripts/blob/master/docs/shell.md#beer-echo-argssh
# @author Jerry Lee (oldratlee at gmail dot com)

readonly ebegin=$'\033[1;31m' # escape begin, red color
readonly eend=$'\033[0m' # escape end

echoArg() {
    local index=$1
    local count=$2
    local value=$3

    # if stdout is console, turn on color output.
    [ -c /dev/stdout ] &&
        echo "$index/$count: $ebegin[$eend$value$ebegin]$eend" || 
        echo "$index/$count: [$value]"
}


echoArg 0 $# "$0"
idx=1
for a ; do
    echoArg $((idx++)) $# "$a"
done
