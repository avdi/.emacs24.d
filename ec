#!/bin/sh

client=/usr/bin/emacsclient

case `basename $0` in 
    # Edit no-wait
    en)     exec $client -n -q -c -a "" "$@"
        ;;
    et)     exec $client -t -q -a "" "$@"
        ;;
    # Eval
    ev)     exec $client -q -a "" -n -e "$@"
        ;;
    # Shell
    es)     exec $client -q -c -a "" "$@"
        ;;
    # e, ec -- Edit
    *)      exec $client -q -c -a "" "$@"
        ;;
esac
