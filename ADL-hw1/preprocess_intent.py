import json
import logging
import pickle
import re
from argparse import ArgumentParser, Namespace
from collections import Counter
from pathlib import Path
from random import random, seed
from typing import List, Dict

import torch
from tqdm.auto import tqdm

from utils import Vocab

logging.basicConfig(
    format="%(asctime)s | %(levelname)s | %(message)s",
    level=logging.INFO,
    datefmt="%Y-%m-%d %H:%M:%S",
)

def main(args):
    """
        Now we don't need vocab and embedding anymore because bert tokenizer handles this for us.
        Nor do we need intent2idx since we will handle it in intent_classification.py.
        Here we convert original data into the format accepted by hugging face load_dataset(), i.e., 
        {"data": [{"a": 1, "b": 2.0, "c": "foo", "d": false},
                    {"a": 4, "b": -5.5, "c": null, "d": true}]
}
    """
    for split in ["train", "eval", "test"]:
        dataset_path = args.data_dir / f"{split}.json"
        dataset = json.loads(dataset_path.read_text())
        logging.info(f"Dataset loaded at {str(dataset_path.resolve())}")

        out = {"data": dataset}

        new_dataset_path = args.output_dir / f"preprocessed_{split}.json"
        with open(new_dataset_path, 'w', encoding="utf-8") as f:
            json.dump(out, f)
        logging.info(f"Processed dataset saved at {str(new_dataset_path.resolve())}")



def parse_args() -> Namespace:
    parser = ArgumentParser()
    parser.add_argument(
        "--data_dir",
        type=Path,
        help="Directory to the dataset.",
        default="./data/intent/",
    )
    parser.add_argument("--rand_seed", type=int, help="Random seed.", default=13)
    parser.add_argument(
        "--output_dir",
        type=Path,
        help="Directory to save the processed file.",
        default="./cache/intent/",
    )
    args = parser.parse_args()
    return args


if __name__ == "__main__":
    args = parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)
    main(args)
