#!/bin/bash

input="$2"
method="$1"
while IFS= read -r line
do
	echo -n "$line" | "$1" | cut -d' ' -f1 >> "$input"."$1"
done < "$input"
