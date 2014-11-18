# 10GB

SIZE=1.0

# check the current size
CHECK="`du -hs /home/it/Downloads/`"
var="G"
front=${CHECK%${var}*}
num=${front}
echo $num
echo $SIZE

if [ 1-eq `echo "${num} < ${SIZE}" | bc` ]
then  
    cp -r /home/it/Downloads/  /home/it/Desktop/
fi 
