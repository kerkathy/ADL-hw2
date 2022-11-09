# run
run.sh ../data/context.json ./predict.csv

# train context selection
src/cs/train.sh

# train QA
src/qa/train_extlarge.sh

# train intent cls
src/intent/intent_cls_train.sh

# train slot tagging
src/slot/slot_tag_train.sh