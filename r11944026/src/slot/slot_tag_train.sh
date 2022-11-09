python src/slot/slot_tagging.py \
  --model_name_or_path bert-base-uncased \
  --train_file data/slot/train.json \
  --validation_file data/slot/eval.json \
  --do_train \
  --do_eval \
  --max_seq_length 128 \
  --per_device_train_batch_size 8 \
  --per_device_eval_batch_size 8 \
  --gradient_accumulation_steps 16 \
  --eval_steps 50 \
  --save_steps 50 \
  --evaluation_strategy steps \
  --learning_rate 2e-5 \
  --num_train_epochs 8 \
  --label_column_name tags \
  --output_dir result/slot \
  --overwrite_output_dir \
  --load_best_model_at_end True \
  --metric_for_best_model sentence_accuracy \
  --cache_dir cache
#   --max_train_samples 5 \
#   --max_eval_samples 5 \
#   --cache_dir  \
#   remove max_{train/eval}_samples when not debugging