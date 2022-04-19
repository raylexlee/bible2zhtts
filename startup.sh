#!/usr/bin/env bash
./getlinks.js https://zh.m.wikisource.org/wiki/聖經_\(和合本\) | ./decodeURI > 聖經_和合本.txt
grep '\([^ ]*\)\shttps://zh.m.wikisource.org/wiki/聖經_(和合本)/\1' 聖經_和合本.txt | awk '{print"./zh_bible_ws",$1,$2;}' | sed 's#\([()]\)#\\\1#g' > 聖經_和合本.sh
