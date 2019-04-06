# to8bit
a lot of videos are now 10bit, which doesn't play well on a raspberry pi 2. so this script uses ffmpeg to encode it to 8bit, which plays well due to hw acceleration. 

## usage
fill in the `folders` and `outs` arrays according to which folders you want to convert. maybe change the `ls *.mkv` to whatever format you want also

```shell
./to8bit.sh
```
