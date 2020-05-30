./darknet detector demo    ~/trained-weight/reference/coco.data   ~/trained-weight/reference/yolov3-tiny.cfg   ~/trained-weight/reference/yolov3-tiny.weights   -thresh 0.15 -mjpeg_port 8090 -json_port 8070  \
 "v4l2src io-mode=2 device=/dev/video0 do-timestamp=true ! video/x-raw, format=YUY2, width=1920, height=1080, framerate=60/1 ! videoflip 
video-direction=2  !  videoconvert ! video/x-raw, format=BGR !  appsink sync=false async=false "

