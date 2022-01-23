#!/bin/bash
# SET_IDS=(Ignatius Barn Meetingroom Truck Caterpillar Church Courthouse)
SET_IDS=(Ignatius Barn Meetingroom Truck Caterpillar Church)
#SET_IDS=(Barn Meetingroom Church Courthouse)
DATA_ROOT=/mnt/data/mvs/tnt
OUTPUT_ROOT=/mnt/outputs/acmm
prog="/home/jae/Research/ACMM/build/ACMM"

for SET_ID in ${SET_IDS[@]}; do
   $prog --input_folder $DATA_ROOT/$SET_ID --acmm_folder $OUTPUT_ROOT/acmm/$SET_ID --output_file $OUTPUT_ROOT/acmm/$SET_ID.ply
   # rm -r $OUTPUT_ROOT/acmm/$SET_ID•
done

