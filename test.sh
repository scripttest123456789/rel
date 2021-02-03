
#### Using inotify tools to monitor a specific directory

inotifywait -m  /home/bruce/test |
#### logic to compress the created file	to specific directory
while read -r dir action file; do
    sleep 4
    tar -czvf /home/bruce/compressed-backup/$file.tar.gz /home/bruce/test/$file 
done
