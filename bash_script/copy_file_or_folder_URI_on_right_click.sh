# The script is intended for 1 selection in the Finder.app,
# but, just in case we've accidentally selected several items,
# we'll loop through all of them and retain the last one in the clipboard.
#
# "$@" is an array-like construct in Bash.
# It represents all the arguments passed to the script
# or the function it's in.
#
# Each argument is treated and quoted as a separate element

# Iterate through the pass-through arguments received from Finder.app
for str_FileOrFolder in "$@"
do

    # Output the element without a trailing newline
    # and pipe it into the clipboard
    echo -n "$str_FileOrFolder" | pbcopy

    # Note: In this loop, each iteration overwrites the clipboard.
    # Therefore, only the last file or folder path processed will remain
    # in the clipboard after the loop completes.

done

# The end
