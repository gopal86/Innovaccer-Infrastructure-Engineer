echo Here is the top-10 files in the whole system
find /home/* -type f -exec du -Sh {} + | sort -rh | head -n 10
echo

while [[ $1 -le $2 ]]; do

  echo Also , you can find the top-10 files in any directory too , enter 1 to continue or 0 to exit
  read input
  if [ $input -eq "1" ]; then
    echo Enter the total path directory you want to get the top-10 files
    read directory
    echo
    find $directory -type f -exec du -Sh {} + | sort -rh | head -n 10
    echo

  else
    exit
  fi

done

exit
