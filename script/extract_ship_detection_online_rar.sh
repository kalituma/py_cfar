#!/bin/bash
# execute this in dataset path
unrar e ship_detection_online.rar
mkdir Annotations_new
find . -name '*.xml' -exec mv {} Annotations_new \;
mkdir JPEGImages
find . -name '*.jpg' -exec mv {} JPEGImages \;