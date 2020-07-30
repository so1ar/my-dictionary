#!/bin/sh

ImeWlConverterCmd -i:scel scel/*.scel -o:rime output.txt
cat sogou-base/base.txt output.txt > temp/temp1.txt
sort temp/temp1.txt -o temp/temp1.txt
uniq temp/temp1.txt > temp/temp2.txt
cat demo.txt temp/temp2.txt > custom.dict.yaml
#rm -f temp/*.txt
