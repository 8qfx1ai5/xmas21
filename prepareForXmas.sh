#!/bin/sh

set -eu

function_command_exists() {
    local command="bash"
    local IFS=":" # paths are delimited with a colon in $PATH

    # iterate over dir paths having executables
    for search_dir in $PATH
    do
        # seek only in dir (excluding subdirs) for a file with an exact (case sensitive) name
        found_path="$(find "$search_dir" -maxdepth 1 -name "$command" -type f 2>/dev/null)"

        # (positive) if a path to a command was found and it was executable
        test -n "$found_path" && \
        test -x "$found_path" && \
                echo "You are well prepared. Please continue with enjoyXmas.sh"

    done
    
    echo "We are sorry. Our christmas card requires bash to run which does not seem to be present on your system"
    echo "We wish you a Merry Christmas 2021 and a Happy New Year!"
}

