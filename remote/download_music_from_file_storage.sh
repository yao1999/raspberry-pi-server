rsync -avcn file-storage-3:/home/ubuntu/youtube/music/* /media/disk02/Musics | grep -v '/$'
read -p 'download from file-storage-3? (y/n)' user_choise
if [ $user_choise = "y" ]
then
    rsync -av --ignore-existing file-storage-3:/home/ubuntu/youtube/music/* /media/disk02/Musics
else
    echo "invalid input"
fi