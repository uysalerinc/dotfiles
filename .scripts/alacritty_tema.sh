#!/usr/bin/bash

my_array=($(ls ~/.config/alacritty | tr " " "\n"))
my_array=( ${my_array[@]/alacritty.yml})
len=${#my_array[*]}
count=1

for (( i=0; i<${len}; i++ ));
do
  echo "$count  ${my_array[$i]}"
  ((count++))
done

echo "Choose new theme"
read -r new_theme
let "new_theme-=1"
cp ~/.config/alacritty/${my_array[$new_theme]} ~/.config/alacritty/alacritty.yml
