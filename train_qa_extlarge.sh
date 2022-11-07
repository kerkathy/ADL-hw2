python3.9 question_answering.py \
  --model_name_or_path hfl/chinese-roberta-wwm-ext-large \
  --context_file data/context.json \
  --train_file data/train.json \
  --validation_file data/valid.json \
  --do_train \
  --do_eval \
  --evaluation_strategy steps \
  --eval_steps 1000 \
  --save_steps 1000 \
  --max_seq_length 512 \
  --per_device_train_batch_size 4 \
  --per_device_eval_batch_size 4 \
  --gradient_accumulation_steps 4 \
  --learning_rate 3e-5 \
  --num_train_epochs 3 \
  --doc_stride 128 \
  --logging_steps 1000 \
  --output_dir ./qa/roberta \
  --overwrite_output_dir \
  --cache_dir ./qa/roberta \
  --metric_for_best_model accuracy \
  --load_best_model_at_end True \

  # --do_predict
  # --test_file data/test.json \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
  #  \
  # --model_name_or_path bert-base-chinese \
  # --model_name_or_path qa/bert-base \
# chinese-roberta-wwm-ext-large