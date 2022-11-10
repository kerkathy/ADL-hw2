# ADL-hw2: Chinese Question Answering
## Environment
```
conda env create -f environment.yml
conda activate adl-hw2
# Now in conda env adl-hw2
(adl-hw2)$ python -m pip install -r requirements.txt
```
All commands shall be run in this environment (or the environment that contains packages needed).
## Download
Download large files, i.e. trained models weights.
```
(adl-hw2)$ download.sh
```
A folder `model` containing models for each task should be created by now. 
## Predict
Run the script `run.sh`. What we actually do in script is to run context selection first, which generates an intermediate file `preprocess_test.json` in current working directory. Then, the file will be the input for question answering.
```
(adl-hw2)$ run.sh /path/to/context.json /path/to/test.json /path/to/output.json
```
Finally, you can find the prediction at `/path/to/output.json`.
## Reproduce Training Result
Before you start training, please make sure the following file structure exists. You should `mkdir` for those missing directories.  Or else you have to change some path-related parameters yourself.
```
.
   |-cache
   |-src
   |---cs
   |---intent
   |---qa
   |---slot
   |-data
   |---cs_and_qa
   |-----context.json
   |-----train.json
   |-----valid.json
   |-----test.json
   |---intent
   |-----train.json
   |-----eval.json
   |-----test.json
   |---slot
   |-----train.json
   |-----eval.json
   |-----test.json
   |-model
   |---cs
   |-----bert
   |-----roberta
   |---intent
   |---qa
   |---slot
   |-result
   |---cs
   |---intent
   |---qa
   |---slot
```
Run the following commands for given tasks. These commands are also contained in `./final.sh` for your convenience.
All model weights and evaluation results will be saved in respective directory under `./result`.
### Context selection
Results saved in `./result/cs`.
```
(adl-hw2)$ src/cs/train.sh
```

### Question Answering
Results saved in `./result/qa`.
```
(adl-hw2)$ src/qa/train_extlarge.sh
```
### Intent Classification
Results saved in `./result/intent`.
```
(adl-hw2)$ src/intent/intent_cls_train.sh
```
### Slot Tagging
Results saved in `./result/slot`.
```
(adl-hw2)$ src/slot/slot_tag_train.sh
```