#!/bin/bash

protoc object_detection/protos/*.proto --python_out=.
/bin/bash
