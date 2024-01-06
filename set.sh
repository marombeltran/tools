while getopts u:p: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        p) path=${OPTARG};;
    esac
done

chown -R $username $path 
chgrp -R www-data $path
chmod -R 750 $path
chmod g+s $path
