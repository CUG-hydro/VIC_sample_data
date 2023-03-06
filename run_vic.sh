#! /usr/bin/bash

# cd image/Stehekin/parameters/

# https://stackoverflow.com/questions/415677/how-to-replace-placeholders-in-a-text-file
export VIC_SAMPLE_DATA="./VIC_sample_data"
export VIC_SAMPLE_RESULTS="OUTPUT"


mkdir OUTPUT/sample_image OUTPUT/sample_classic -p

# envsubst < VIC_sample_data/classic/Stehekin/parameters/global_param.STEHE.txt > global_vic5_image.txt
time bin/vic_classic.exe -g ./global_vic5_classic.txt 2> log.txt

envsubst < VIC_sample_data/image/Stehekin/parameters/global_param.Stehekin.L2015.txt > global_vic5_image.txt
time bin/vic_image.exe -g ./global_vic5_image.txt 2> log.txt

# image会快不少
