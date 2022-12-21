import pandas as pd
import json, csv
import sys

"""
[sample submission format]
id,answer
5e7a923dd6e4ccb8730eb95230e0c908,硬體是
a2e9cd802197b8f8dfbe235e2761f9ed,列寧的馬克
"""

if len(sys.argv) < 3:
    assert False, "[Usage] jsonToCsv.py <oldfile> <newfile>"

with open(sys.argv[1], 'r') as f:
    data = json.load(f) # dict

with open(sys.argv[2], 'w') as f:
    # 建立 CSV 檔寫入器
    writer = csv.writer(f)

    # 寫入一列資料
    writer.writerow(['id', 'answer'])

    # 寫入另外幾列資料
    for k, v in data.items():
        writer.writerow([k,v])


# filename = sys.argv[1]
# new_filename = sys.argv[2]

# json_file = pd.read_json(filename)
# csv_file = json_file.to_csv(new_filename)