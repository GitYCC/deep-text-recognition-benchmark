source chars_var.sh

CUDA_VISIBLE_DEVICES=0,1 python train.py \
--train_data data_lmdb/training \
--valid_data data_lmdb/validation \
--select_data TC-MJ-ST \
--batch_ratio 0.6-0.2-0.2 \
--num_iter 300000000 \
--valInterval 1000 \
--workers 0 \
--character "$CHARS" \
--batch_max_length 32 \
--Transformation TPS --FeatureExtraction ResNet --SequenceModeling BiLSTM --Prediction Attn
