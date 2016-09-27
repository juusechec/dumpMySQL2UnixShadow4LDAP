#!/bin/bash
filename="$1" #funcionarios.sql
unixdays=$(expr $(date +%s) / 86400)
while read -r line
do
  linea="$line"
  echo $linea:$unixdays:0:99999:7:::
done < "$filename"
