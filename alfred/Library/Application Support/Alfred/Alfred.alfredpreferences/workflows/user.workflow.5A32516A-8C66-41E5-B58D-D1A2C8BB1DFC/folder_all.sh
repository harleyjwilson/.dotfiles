#!/bin/zsh

# Get an alphabetic list of Shortcuts folders
strscflist=$(shortcuts list --folders | sort -f)

# Build the basic JSON content
jsonscflist="$(echo $strscflist | sed -r 's/(.*)/{"title" : "\1", "arg" : "\1"},/')REMOVELASTCOMMA"
# Strip the last comma (and the end of list marker)
jsonscflist=$(echo $jsonscflist | sed -r 's/,REMOVELASTCOMMA//')

# Output the JSON
echo {\"items\": [
echo $jsonscflist
echo "]}"
