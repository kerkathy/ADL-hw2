# Arguments:
# ○ "${1}": path to the context file.
# ○ "${2}": path to the testing file.
# ○ "${3}": path to the output predictions.
# Running:
# bash ./run.sh /path/to/context.json /path/to/test.json /path/to/pred/prediction.csv

python3.9 jsonToCsv.py qa/bert-base/checkpoint-34000/predict_predictions.json tmp.csv
# python3.9 jsonToCsv.py predict_predictions.json ${3}