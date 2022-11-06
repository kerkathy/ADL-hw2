python run_qa.py \
  --dataset_name squad \
  --do_train \
  --do_eval \
  --model_name_or_path bert-base-uncased \
  --context_file data/context.json \
  --train_file data/train.json \
  --validation_file data/valid.json \
  --max_length 512 \
  --per_device_train_batch_size 2 \
  --per_device_eval_batch_size 2 \
  --learning_rate 3e-5 \
  --gradient_accumulation_steps 16 \
  --num_train_epochs 1 \
  --doc_stride 128 \
  --checkpointing_steps 50 \
  --output_dir ./qa/bert-base \
  --cache_dir ./cache/ \
  # --debug \
  # --do_predict
  # --test_file data/test.json \