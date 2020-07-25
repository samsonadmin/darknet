#./darknet detector demo ./cfg/coco.data ./cfg/yolov3-tiny.cfg ./yolov3-tiny.weights 'v4l2src io-mode=2 device=/dev/video1 ! video/x-h264,width=1920,height=1080,framerate=30/1,streamformat=byte-stream ! omxh264dec ! videoconvert ! video/x-raw,chroma-site=dv ! appsink sync=false ' 


#./darknet detector demo ./cfg/coco.data ./cfg/yolov3-tiny.cfg ./yolov3-tiny.weights 'v4l2src io-mode=2 device=/dev/video0 ! image/jpeg, width=(int)1920, height=(int)1080, framerate=10/1 ! jpegparse ! jpegdec ! videoconvert ! appsink sync=false' -i 0 -thresh 0.25


./darknet detector demo ./cfg/coco.data ./cfg/yolov3-tiny.cfg ./yolov3-tiny.weights 'v4l2src  io-mode=2  device=/dev/video0 ! image/jpeg, width=1280, height=720, framerate=30/1 ! jpegparse ! jpegdec ! videoconvert ! appsink sync=false' -i 0 -thresh 0.25


#./darknet detector demo ./cfg/coco.data ./cfg/yolov3-tiny.cfg ./yolov3-tiny.weights -c 0 -i 0 -thresh 0.25

