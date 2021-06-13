#!/usr/bin/env bash
for i in Chapter*
do
   cd "$i"
   zip -r "${i%/}.zip" *
   cd ..
done
