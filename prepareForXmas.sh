#!/bin/sh


if ! command -v bash &> /dev/null
then
    echo "We are sorry. Our christmas card requires bash to run which does not seem to be present on your system"
    echo "We wish you a Merry Christmas 2021 and a Happy New Year!"
    exit
else
    echo "You are well prepared for Xmas! Please continue with bash -c enjoyXmas.sh"
fi

