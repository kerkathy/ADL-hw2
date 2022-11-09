python3.9 src/qa/question_answering.py \
  --model_name_or_path model/qa \
  --do_predict \
  --context_file ${1} \
  --test_file preprocessed_test.json \
  --output_dir . \
  --overwrite_output_dir \
  --max_seq_length 512 \
  --per_device_eval_batch_size 1 \
  --gradient_accumulation_steps 2 \
  --learning_rate 3e-5 \
  --num_train_epochs 1 \
  --doc_stride 128 \
  # num_train_epoch 要不要刪掉??
  # --cache_dir ../../cache \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
  #  \
  # --model_name_or_path bert-base-chinese \
  # --model_name_or_path qa/bert-base \
  # --context_file data/context.json \
