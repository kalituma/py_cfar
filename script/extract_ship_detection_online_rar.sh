#!/bin/bash
cd /home/dataset
mkdir /home/dataset/Annotations_new
find . -name '*.xml' -exec mv {} Annotations_new \;
mkdir ground_truth
mkdir JPEGImages
find . -name '*.jpg' -exec mv {} JPEGImages \;
