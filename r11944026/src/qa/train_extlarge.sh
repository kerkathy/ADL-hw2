python3.9 src/qa/question_answering.py \
  --model_name_or_path hfl/chinese-roberta-wwm-ext-large \
  --do_train \
  --do_eval \
  --context_file data/cs_and_qa/context.json \
  --train_file data/cs_and_qa/train.json \
  --validation_file data/cs_and_qa/valid.json \
  --evaluation_strategy steps \
  --eval_steps 2000 \
  --logging_steps 2000 \
  --save_steps 2000 \
  --max_seq_length 512 \
  --per_device_train_batch_size 2 \
  --per_device_eval_batch_size 2 \
  --gradient_accumulation_steps 4 \
  --learning_rate 3e-5 \
  --warmup_ratio 0.25 \
  --num_train_epochs 3 \
  --doc_stride 128 \
  --logging_steps 2000 \
  --output_dir result/qa/macbert \
  --overwrite_output_dir \
  --cache_dir cache \
  --metric_for_best_model exact_match \
  --load_best_model_at_end True \
  --report_to tensorboard
  # --resume_from_checkpoint qa/roberta/checkpoint-2000 \

  # --do_predict
  # --test_file data/test.json \
  # --max_train_samples 100 \
  # --max_eval_samples 100 \
  #  \
  # --model_name_or_path bert-base-chinese \
  # --model_name_or_path qa/bert-base \
  # --model_name_or_path hfl/chinese-macbert-large \
# hfl/chinese-roberta-wwm-ext-large