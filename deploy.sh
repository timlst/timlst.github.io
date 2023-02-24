#!/bin/sh
USER=tistorm
HOST=timlst.de
DIR=personal-website/   # the directory where your web site files should go

hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR} # this will delete everything on the server that's not in the local public folder

exit 0

