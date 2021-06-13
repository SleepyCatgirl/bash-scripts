#!/usr/bin/env bash
#Delete worlds after symbol :
for i in ./*\:*
# Loop, for everything that has : in them
# : has to be escaped with \
    do
        echo "${i%%\:*}"
        mv "$i" "${i%%\:*}"
# %% is to delete match from the end
# longest match.
# So we delete anything after :
done
