#!/bin/bash

protoc object_detection/protos/*.proto --python_out=.
# python object_detection/dataset_tools/create_oid_tf_record.py \
#   --input_box_annotations_csv=./data/train/train-annotations-bbox.csv \
#   --input_images_directory=./data/train/images/ \
#   --input_label_map=./data/baggage_label_map.pbtxt \
#   --output_tf_record_path_prefix=./data/train/tfrecord/baggage.tfrecord \
#   --num_shards=1
# /bin/bash

python object_detection/model_main.py \
  --pipeline_config_path=/home/tensorflow/research/models/faster_rcnn/pipeline.config \
  --model_dir=/home/tensorflow/research/models/faster_rcnn/ \
  --num_train_steps=50000 \
  --sample_1_of_n_eval_examples=1
  # --alsologtostderr
