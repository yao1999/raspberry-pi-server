#!/bin/bash

echo "1. movie-station-1"
echo "2. movie-station-2"

read -p 'movie-station: ' MS_number

if [ $MS_number -eq 1 ]
then
    rsync -avcn movie-station-$MS_number:/home/ubuntu/download/* /media/disk01 | grep -v '/$'
    read -p 'download from movie-station-$MS_number? (y/n)' user_choise
    if [ $user_choise = "y" ]
    then
        rsync -av --ignore-existing movie-station-$MS_number:/home/ubuntu/download/* /media/disk01
    else
        echo "invalid input"
    fi
elif [ $MS_number -eq 2 ]
then
    rsync -avcn movie-station-$MS_number:/home/ubuntu/download/* /media/disk01 | grep -v '/$'
    read -p 'download from movie-station-$MS_number? (y/n)' user_choise
    if [ $user_choise = "y" ]
    then
        rsync -av --ignore-existing movie-station-$MS_number:/home/ubuntu/download/* /media/disk01
    else
        echo "invalid input"
    fi
else
    echo "No such movie-station"
fi


echo "All file in Movie"
ls /media/disk01