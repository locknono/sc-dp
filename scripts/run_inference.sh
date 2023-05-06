OUTPUT_DIR=results/
DISP_NET=checkpoints/dispnet_model_best.pth.tar
DATA_ROOT=Dataset/kitti_depth_test

python3 run_inference.py --pretrained-dispnet $DISP_NET \
    --dataset-dir $DATA_ROOT/color --output-dir $OUTPUT_DIR --output-disp --dispnet DispResNet
