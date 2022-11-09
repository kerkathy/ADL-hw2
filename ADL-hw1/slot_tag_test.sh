python slot_tagging.py \
  --model_name_or_path bert-base-uncased \
  --train_file data/slot/train.json \
  --test_file data/slot/test.json \
  --do_predict \
  --max_seq_length 128 \
  --label_column_name tags \
  --output_dir result/slot/test \
  --overwrite_output_dir \
  --cache_dir cache
#   --max_train_samples 5 \
#   --max_eval_samples 5 \
#   --cache_dir  \
#   remove max_{train/eval}_samples when not debugging