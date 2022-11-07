python3.9 question_answering.py \
  --model_name_or_path chinese-roberta-wwm-ext-large \
  --context_file data/context.json \
  --train_file data/train.json \
  --validation_file data/valid.json \
  --do_train \
  --do_eval \
  --evaluation_strategy steps \
  --eval_steps 100 \
  --max_seq_length 512 \
  --per_device_train_batch_size 1 \
  --per_device_eval_batch_size 1 \
  --gradient_accumulation_steps 2 \
  --learning_rate 3e-5 \
  --num_train_epochs 1 \
  --doc_stride 128 \
  --logging_steps 50 \
  --output_dir ./qa/bert-base \
  --overwrite_output_dir \
  --cache_dir ./qa/bert-base
  # --do_predict
  # --test_file data/test.json \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
  #  \
  # --model_name_or_path bert-base-chinese \
  # --model_name_or_path qa/bert-base \
# chinese-roberta-wwm-ext-large