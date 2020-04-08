#./darknet detector demo cfg/samson-obj.data cfg/samson-yolov3-tiny.cfg backup/samson-yolov3-tiny_final.weights  'v4l2src  io-mode=2  device=/dev/video0 ! image/jpeg, width=1280, height=720, framerate=30/1 ! jpegparse ! jpegdec ! videoconvert ! appsink sync=false' -thresh 0.55 -dont_show -mjpeg_port 8090 -map


#./darknet detector demo cfg/samson-obj.data cfg/samson-yolov3-tiny.cfg backup/samson-yolov3-tiny_final.weights  'v4l2src  io-mode=2  device=/dev/video0 ! image/jpeg, width=1280, height=720, framerate=30/1 ! jpegparse ! jpegdec ! videoconvert ! appsink sync=false' -thresh 0.55  -dont_show -mjpeg_port 8090 

#./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights  -c 0 -thresh 0.02 -dont_show -prefix ~/images/d20200328-122754 -mjpeg_port 8090 -json_port 8070

#./darknet detector demo  ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src device=/dev/video0 ! video/x-raw, framerate=30/1, width=1920, height=1080 ! videoconvert ! appsink" -ext_output -dont_show







#./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src io-mode=2 device=/dev/video0 ! video/x-raw, framerate=30/1, width=1920, height=1080 ! videoconvert ! video/x-raw,format=(string)BGR ! appsink" -thresh 0.2 -mjpeg_port 8090 -json_port 8070 -prefix ~/images/asd1234 -http_post_host https://webhook.site/0b42dc13-bc64-4515-ad3b-2dfcb3f3a310 -dont_show

# v4l2src io-mode=2 device=/dev/video0 do-timestamp=true ! video/x-raw, format=YUY2, width=1920, height=1080, framerate=30/1 ! nvvidconv flip-method=2 ! 'video/x-raw(memory:NVMM), format=(string)I420' ! videoconvert ! appsink"
#video/x-raw, format=I420 !   nvvidconv  ! nvoverlaysink sync=false async=false

#./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src io-mode=2 device=/dev/video0 do-timestamp=true ! video/x-raw, format=YUY2, width=1920, height=1080, framerate=30/1 ! nvvidconv ! 'video/x-raw(memory:NVMM), format=(string)I420' ! videoconvert ! appsink" -thresh 0.02 -dont_show -prefix ~/images/d20200328-122754 -mjpeg_port 8090 -json_port 8070



###Works with X11 Server and low memory usage without -dont_show
###Example that changes framerate and rotate 
./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src io-mode=2 device=/dev/video0 ! video/x-raw, framerate=60/1, width=1920, height=1080 ! videoconvert ! appsink sync=false" -thresh 0.2 -mjpeg_port 8090 -json_port 8070 




###Works with X11 Server and low memory usage without -dont_show
#./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src io-mode=2 device=/dev/video0 ! video/x-raw, framerate=30/1, width=1920, height=1080 ! videoflip method=rotate-180 ! videoconvert ! video/x-raw,format=(string)BGR ! videorate ! video/x-raw,framerate=3/1 ! appsink sync=false async=false" -thresh 0.2 -mjpeg_port 8090 -json_port 8070 


