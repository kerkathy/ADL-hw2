python context_selection.py \
  --do_train \
  --model_name_or_path hfl/chinese-roberta-wwm-ext \
  --context_file data/context.json \
  --train_file data/train.json \
  --validation_file data/valid.json \
  --max_length 512 \
  --per_device_train_batch_size 2 \
  --per_device_eval_batch_size 2 \
  --learning_rate 3e-5 \
  --weight_decay 0.0 \
  --lr_scheduler_type linear \
  --num_warmup_steps 0 \
  --gradient_accumulation_steps 16 \
  --num_train_epochs 1 \
  --checkpointing_steps 50 \
  --output_dir ./cs/roberta2 \
  --cache_dir ./cache/ \
  --with_tracking \
  # --debug \
  # --do_predict
  # --test_file data/test.json \
  # --model_type BertForMultipleChoice \
  