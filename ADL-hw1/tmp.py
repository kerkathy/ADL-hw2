import json
from pathlib import Path

intents = set()

for split in ["train", "eval"]:
    dataset_path = Path("data/intent") / f"{split}.json"
    dataset = json.loads(dataset_path.read_text())
    
    intents.update({instance["intent"] for instance in dataset})

print(intents)