# run
# run.sh ../data/context.json ../data/test.json ./predict.csv

# train context selection
# echo "***** Running src/cs/train.sh *****"
# src/cs/train.sh

# train QA
# echo "***** Running src/qa/train_extlarge.sh *****"
# src/qa/train_extlarge.sh

# train intent cls
echo "***** Running src/intent/intent_cls_train.sh *****"
src/intent/intent_cls_train.sh

# train slot tagging
echo "***** Running src/slot/slot_tag_train.sh *****"
src/slot/slot_tag_train.sh
