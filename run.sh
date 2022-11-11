# Arguments:
# ○ "${1}": path to the context file.
# ○ "${2}": path to the testing file.
# ○ "${3}": path to the output predictions.
# Running:
# bash ./run.sh /path/to/context.json /path/to/test.json /path/to/pred/prediction.csv

# jsonToCsv.py <arg1> <arg2>
# arg1要是test_qa的output_dir裡面的predict_predictions.json
# ./test_cs.sh data/context.json data/test.json
# ./test_qa.sh data/context.json
# python3.9 jsonToCsv.py result/macbert/predict_predictions.json tmp.csv

./test_cs.sh ${1} ${2}
./test_qa.sh ${1}
python3.9 jsonToCsv.py ./predict_predictions.json ${3}