python intent_classification.py \
  --model_name_or_path result/intent \
  --train_file data/intent/train.json \
  --test_file data/intent/test.json \
  --do_predict \
  --max_seq_length 128 \
  --output_dir result/intent \
  --cache_dir result/intent \
  --overwrite_output_dir \
  # --max_predict_samples 100
#  above are for debugging
