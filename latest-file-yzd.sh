#!/bin/bash

for ktq in $(ls);
do
  if [ -d $ktq ]
  then
    echo "Kateqoriya: $ktq"
    cd $ktq
    for prgs in $(ls);
    do
      if [ -d $prgs ]
      then
        cd $prgs
        echo "Proqram: $prgs"
        mv latest_file.json latest_azp.json
        cd ..
      fi
    done
    cd ..
  fi
done
