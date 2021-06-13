#!/usr/bin/env bash
for i in Chapter*
do
   mv "${i%/}.cbz" "Innocent ${i%/}.cbz"
done
