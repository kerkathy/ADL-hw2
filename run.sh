# Arguments:
# ○ "${1}": path to the context file.
# ○ "${2}": path to the testing file.
# ○ "${3}": path to the output predictions.
# Running:
# bash ./run.sh /path/to/context.json /path/to/test.json /path/to/pred/prediction.csv

# 路徑要再設一下 test_qa需要讀preprocess_test
./test_cs.sh data/context.json data/test.json
./test_qa.sh data/context.json
python3.9 jsonToCsv.py qa/bert-base/checkpoint-34000/predict_predictions.json tmp.csv

# ./test_cs.sh ${1} ${2}
# ./test_qa.sh ${1}
# python3.9 jsonToCsv.py predict_predictions.json ${3}