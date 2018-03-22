
#!/bin/bash
echo "Hello get the pic from video !"
path_video="/home/zyx/Desktop/ffmepg/videopic_in"
echo "path_video file filefold"
echo $path_video
path_output="/home/zyx/Desktop/ffmepg/videopic_out"


for file in $(ls *)
do

  ffmpeg -i $path_video/$file  \
		-r 10  \
		-q:v 2  \
		-f image2 $path_output/$file-%4d.jpg
done



# -vf fps=fps=1
# sudo apt-get install ffmpeg


# ffmpeg -i '/home/zyx/Desktop/dataset/video/ffmpeg/FqR9HRxBWKTRVFBbpWCd6O4XEv5w.mp4'  \
# -r 1  \
# -q:v 2  \
# -f image2 image1-3%d.jpeg


# 常用参数说明：

# 主要参数：
# -i 设定输入流
# -f 设定输出格式
# -ss 开始时间
# 视频参数：
# -b 设定视频流量，默认为200Kbit/s
# -r 设定帧速率，默认为25
# -s 设定画面的宽与高
# -aspect 设定画面的比例
# -vn 不处理视频
# -vcodec 设定视频编解码器，未设定时则使用与输入流相同的编解码器
# 音频参数：
# -ar 设定采样率
# -ac 设定声音的Channel数
# -acodec 设定声音编解码器，未设定时则使用与输入流相同的编解码器
# -an 不处理音频


# import os, sys  
# from PIL import Image  
# #open a pipe from a command   
# a, b, c = os.popen3("ffmpeg -i test.avi")  
# out = c.read()  
# dp = out.index("Duration: ")  
# duration = out[dp+10:dp+out[dp:].index(",")]  
# hh, mm, ss = map(float, duration.split(":"))  
# #total time ss  
# total = (hh*60 + mm)*60 + ss  
# for i in xrange(9):  
#     t = int((i + 1) * total / 10)  
#     # ffmpeg -i test.mp4 -y -f mjpeg -ss 3 -t 1  test1.jpg   
#     os.system("ffmpeg -i test.avi -y -f mjpeg -ss %s -t 1 frame%i.jpg" % (t, i))  
  
# """ 
# num=int(total-3) 
# i=0 
# for t in xrange(0,num,3): 
#     i = i+1 
#     # ffmpeg -i test.mp4 -y -f mjpeg -ss 3 -t 1  test1.jpg  
#     os.system("ffmpeg -i test.avi -y -f mjpeg -ss %s -t 1 %sframe%i.jpg" % (t,t, i)) 
# """  
