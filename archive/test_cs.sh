python context_selection.py \
  --do_predict \
  --model_type bert \
  --model_name_or_path cs/macbert \
  --context_file ${1} \
  --test_file ${2} \
  --max_length 512 \
  --per_device_eval_batch_size 2 \
  --output_dir . \
  --cache_dir ./cache/ \
  --with_tracking \
  # --context_file data/context.json \
  # --test_file data/test.json \
  # --debug \