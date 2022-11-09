python3.9 question_answering.py \
  --model_name_or_path bert-base-chinese \
  --do_train \
  --do_eval \
  --context_file data/context.json \
  --train_file data/train.json \
  --validation_file data/valid.json \
  --output_dir result/qa \
  --cache_dir cache \
  --overwrite_output_dir \
  --evaluation_strategy steps \
  --eval_steps 2000 \
  --logging_steps 2000 \
  --save_steps 2000 \
  --per_device_train_batch_size 2 \
  --per_device_eval_batch_size 2 \
  --gradient_accumulation_steps 4 \
  --learning_rate 3e-5 \
  --doc_stride 128 \
  --num_train_epochs 3 \
  --max_seq_length 512 \
  --warmup_ratio 0.1 \
  --max_seq_length 512 \
  --load_best_model_at_end True \
  --metric_for_best_model exact_match \

  # --logging_steps 100 \
  # --do_predict
  # --test_file data/test.json \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
  #  \
  # --model_name_or_path bert-base-chinese \
  # --model_name_or_path qa/bert-base \
# chinese-roberta-wwm-ext-large