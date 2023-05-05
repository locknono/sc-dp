DISP_NET=checkpoints/dispnet_model_best.pth.tar
DATA_ROOT=Dataset/kitti_depth_test
RESULTS_DIR=results/test

# test
python test_disp.py --img-height 256 --img-width 832 \
--pretrained-dispnet $DISP_NET --dataset-dir $DATA_ROOT/color \
--dispnet DispResNet \
--output-dir $RESULTS_DIR

# evaluate
python eval_depth.py \
--dataset kitti \
--pred_depth=$RESULTS_DIR/predictions.npy \
--gt_depth=$DATA_ROOT/depth \
--vis_dir=$RESULTS_DIR \
--img_dir=$DATA_ROOT/color