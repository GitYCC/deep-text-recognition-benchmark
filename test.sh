source chars_var.sh

CUDA_VISIBLE_DEVICES=0 python test.py \
--eval_data data_lmdb/validation_passbook \
--Transformation TPS --FeatureExtraction ResNet --SequenceModeling BiLSTM --Prediction CTC \
--saved_model saved_models/TPS-ResNet-BiLSTM-CTC-Seed1111/best_accuracy.pth \
--character $CHARS_VER1
