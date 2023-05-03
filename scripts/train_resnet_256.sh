TRAIN_SET=./Dataset/kitti_256/

python train.py $TRAIN_SET \
--dispnet DispResNet \
--num-scales 1 \
-b4 -s0.1 -c0.5 --epoch-size 3 --sequence-length 3 \
--with-mask \
--with-ssim \
--with-gt \
--name resnet_256