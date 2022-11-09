python intent_classification.py \
  --model_name_or_path bert-base-cased \
  --train_file data/intent/train.json \
  --validation_file data/intent/eval.json \
  --do_train \
  --do_eval \
  --max_seq_length 128 \
  --per_device_train_batch_size 8 \
  --per_device_eval_batch_size 8 \
  --gradient_accumulation_steps 8 \
  --eval_steps 100 \
  --save_steps 100 \
  --evaluation_strategy steps \
  --learning_rate 2e-5 \
  --num_train_epochs 3 \
  --output_dir result/intent \
  --overwrite_output_dir \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
#   above two are for debugging
  # --do_predict \
  # --test_file data/intent/test.json \
  # --max_predict_samples 100
