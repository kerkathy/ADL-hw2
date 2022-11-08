python3.9 question_answering.py \
  --model_name_or_path qa/roberta \
  --do_predict \
  --context_file data/context.json \
  --test_file data/preprocessed_test.json \
  --output_dir qa/roberta \
  --cache_dir qa/roberta \
  --overwrite_output_dir \
  --max_seq_length 512 \
  --per_device_eval_batch_size 1 \
  --gradient_accumulation_steps 2 \
  --learning_rate 3e-5 \
  --num_train_epochs 1 \
  --doc_stride 128 \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
  #  \
  # --model_name_or_path bert-base-chinese \
  # --model_name_or_path qa/bert-base \
