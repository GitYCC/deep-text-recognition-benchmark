source chars_var.sh

CUDA_VISIBLE_DEVICES=0 python3.7 train.py \
--train_data lmdb_data/training \
--valid_data lmdb_data/real_world_train \
--select_data synth_batch \
--batch_ratio 1.0 \
--num_iter 300000000 \
--valInterval 2000 \
--character "$CHARS" \
--batch_max_length 32 \
--Transformation TPS --FeatureExtraction ResNet --SequenceModeling BiLSTM --Prediction CTC \
--manualSeed 1313
