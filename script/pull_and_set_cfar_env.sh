#!/bin/bash
docker pull kalituma/cfar:0.1
docker run -i -t \
     -v /home/khw/mount/e_drive/build/py_cfar_git:/home/py_cfar \
     -v /home/khw/mount/e_drive/docker/SAR_Ship_Dataset_old:/home/dataset \
     --name cfar_with_opencv kalituma/cfar:0.1