python src/cs/context_selection.py \
  --do_predict \
  --model_type bert \
  --model_name_or_path model/cs/roberta \
  --context_file ${1} \
  --test_file ${2} \
  --max_length 512 \
  --output_dir . \
  --per_device_eval_batch_size 2 \
  # --debug \
  # --cache_dir ./cache/ \
  # --with_tracking \
  # --context_file data/context.json \
  # --test_file data/test.json \