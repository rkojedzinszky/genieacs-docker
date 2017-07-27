#!/bin/sh

case "$1" in
	start-cwmp|start-nbi|start-fs)
		exec node bin/genieacs-${1#start-}
		;;
	*)
		exec "$@"
		;;
esac
