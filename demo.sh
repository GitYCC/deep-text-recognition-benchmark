source chars_var.sh

CUDA_VISIBLE_DEVICES=0 python demo.py \
--Transformation TPS --FeatureExtraction ResNet --SequenceModeling BiLSTM --Prediction CTC \
--image_folder ./passbook_validation \
--saved_model saved_models/TPS-ResNet-BiLSTM-CTC-Seed1111/best_accuracy.pth \
--character $CHARS \
| tee passbook_validation.log
