#./darknet detector demo cfg/samson-obj.data cfg/samson-yolov3-tiny.cfg backup/samson-yolov3-tiny_final.weights  'v4l2src  io-mode=2  device=/dev/video0 ! image/jpeg, width=1280, height=720, framerate=30/1 ! jpegparse ! jpegdec ! videoconvert ! appsink sync=false' -thresh 0.55 -dont_show -mjpeg_port 8090 -map


#./darknet detector demo cfg/samson-obj.data cfg/samson-yolov3-tiny.cfg backup/samson-yolov3-tiny_final.weights  'v4l2src  io-mode=2  device=/dev/video0 ! image/jpeg, width=1280, height=720, framerate=30/1 ! jpegparse ! jpegdec ! videoconvert ! appsink sync=false' -thresh 0.55  -dont_show -mjpeg_port 8090 

#./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights -c 0 -thresh 0.05  -dont_show -mjpeg_port 8090 

#./darknet detector demo  ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src device=/dev/video0 ! video/x-raw, framerate=30/1, width=1920, height=1080 ! videoconvert ! appsink" -ext_output -dont_show


./darknet detector demo ~/trained-weight/police2020/samson-obj.data ~/trained-weight/police2020/samson-yolov3-tiny.cfg ~/trained-weight/police2020/samson-yolov3-tiny_final.weights "v4l2src device=/dev/video0 ! video/x-raw, framerate=30/1, width=1920, height=1080 ! videoconvert ! appsink" -thresh 0.2 -prefix ~/images/asd1234 

