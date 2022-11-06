python train_cs.py \
  --model_name_or_path bert-base-chinese \
  --context_file context.json \
  --train_file train.json \
  --validation_file valid.json \
  --max_length 512 \
  --per_device_train_batch_size 2 \
  --per_device_eval_batch_size 2 \
  --learning_rate 3e-5 \
  --weight_decay 0.0 \
  --lr_scheduler_type linear \
  --num_warmup_steps 0 \
  --num_train_epochs 1 \
  --output_dir ./cs \
  # --cache_dir ./cache/ \