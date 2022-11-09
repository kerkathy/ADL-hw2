import json
from pathlib import Path
from datasets import ClassLabel, load_dataset

# intents = set()

data_files = {"train": "data/slot/train.json", "eval": "data/slot/eval.json"}
datasets = load_dataset("json", data_files=data_files)
# for split in ["train", "eval"]:
#     dataset_path = Path("data/slot") / f"{split}.json"
#     dataset = json.loads(dataset_path.read_text())
    
    # intents.update({instance["tags"] for instance in dataset})

print(datasets)
print(datasets["train"][0])
print(datasets["train"].features["tags"])