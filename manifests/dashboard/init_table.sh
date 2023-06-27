DROP TABLE scoring;

CREATE TABLE scoring(time TIMESTAMP, png VARCHAR(255), score VARCHAR(255));

INSERT INTO scoring(time,png, score) SELECT CURRENT_TIMESTAMP(), 'iVBORw0KGgoAAAANSUhEUgAAAaAAAAGdCAYAAABU0qcqAAAAOXRFWHRTb2Z0d2FyZQBNYXRwbG90bGliIHZlcnNpb24zLjYuMywgaHR0cHM6Ly9tYXRwbG90bGliLm9yZy/P9b71AAAACXBIWXMAAA9hAAAPYQGoP6dpAAAcGElEQVR4nO3df2zV9fXH8dflR6+I7e1KbW+vFFYQYRPoJpOuUfmi7Sg1M6Jk8QduYAxMVtwQHK5GBaZZHWbOaRj+4UbnJqhkAtE4DBZb4lZYQBkhbg1lddTQH0rGvaVIqfT9/YNw55UW+Fzu7WnL85HchN57T+/x47VPL/fyweeccwIAoJcNsl4AAHBxIkAAABMECABgggABAEwQIACACQIEADBBgAAAJggQAMDEEOsFvqyrq0uHDh1SamqqfD6f9ToAAI+cc2pra1MoFNKgQT2/zulzATp06JByc3Ot1wAAXKDGxkaNHDmyx9v7XIBSU1MlnVo8LS3NeBsAgFeRSES5ubnRn+c9SVqAVq9eraefflrNzc3Kz8/X888/r6lTp55z7vRvu6WlpREgAOjHzvU2SlI+hPDqq69qyZIlWr58ud5//33l5+erpKREra2tyXg4AEA/lJQAPfPMM5o/f77uvfdeff3rX9cLL7ygSy+9VL///e+T8XAAgH4o4QE6ceKEdu/ereLi4v89yKBBKi4uVm1t7Rn37+joUCQSibkAAAa+hAfo008/1cmTJ5WdnR1zfXZ2tpqbm8+4f0VFhQKBQPTCJ+AA4OJg/gdRy8vLFQ6Ho5fGxkbrlQAAvSDhn4LLzMzU4MGD1dLSEnN9S0uLgsHgGff3+/3y+/2JXgMA0Mcl/BVQSkqKpkyZoqqqquh1XV1dqqqqUmFhYaIfDgDQTyXlzwEtWbJEc+fO1be+9S1NnTpVzz77rNrb23Xvvfcm4+EAAP1QUgJ0xx136JNPPtHjjz+u5uZmfeMb39CWLVvO+GACAODi5XPOOeslvigSiSgQCCgcDnMmBADoh87357j5p+AAABcnAgQAMEGAAAAmCBAAwAQBAgCYIEAAABMECABgggABAEwQIACACQIEADBBgAAAJggQAMAEAQIAmCBAAAATBAgAYIIAAQBMECAAgAkCBAAwQYAAACYIEADABAECAJggQAAAEwQIAGCCAAEATBAgAIAJAgQAMEGAAAAmCBAAwAQBAgCYIEAAABMECABgggABAEwQIACACQIEADBBgAAAJggQAMAEAQIAmCBAAAATBAgAYIIAAQBMECAAgAkCBAAwQYAAACYIEADABAECAJggQAAAEwQIAGCCAAEATBAgAIAJAgQAMEGAAAAmCBAAwMQQ6wWA/q61tdXzzOrVqz3PHD9+3PNMc3Oz5xlJ+uMf/xjXnFdFRUWeZ+655x7PM9/5znc8z0hSKBSKaw7nh1dAAAATBAgAYCLhAVqxYoV8Pl/MZcKECYl+GABAP5eU94CuvvpqvfPOO/97kCG81QQAiJWUMgwZMkTBYDAZ3xoAMEAk5T2g/fv3KxQKacyYMZozZ44OHjzY4307OjoUiURiLgCAgS/hASooKFBlZaW2bNmiNWvWqKGhQTfccIPa2tq6vX9FRYUCgUD0kpubm+iVAAB9UMIDVFpaqu9973uaPHmySkpK9NZbb+nIkSN67bXXur1/eXm5wuFw9NLY2JjolQAAfVDSPx2Qnp6uq666SvX19d3e7vf75ff7k70GAKCPSfqfAzp69KgOHDignJycZD8UAKAfSXiAHnroIdXU1Oijjz7S3/72N912220aPHiw7rrrrkQ/FACgH0v4b8F9/PHHuuuuu3T48GFdfvnluv7667Vjxw5dfvnliX4oAEA/5nPOOeslvigSiSgQCCgcDistLc16HfRTHR0dcc099dRTnmeeffZZzzO99ccN4v3P2+fzJXgTW8OGDYtr7oc//KHnmV/96ldxPdZAcr4/xzkXHADABAECAJggQAAAEwQIAGCCAAEATBAgAIAJAgQAMEGAAAAmCBAAwAQBAgCYIEAAABMECABgIul/IR1wocLhsOeZKVOmxPVYDQ0Ncc15NWfOHM8zKSkpnmc4Gekp27dvj2tuzZo1nmfS09M9zzzyyCOeZwYPHux5pq/hFRAAwAQBAgCYIEAAABMECABgggABAEwQIACACQIEADBBgAAAJggQAMAEAQIAmCBAAAATBAgAYIIAAQBMcDZs9KrPP//c88xdd93leebf//635xkpvrNAl5WVeZ75zW9+43lmoJ2hujedOHEirrl33nnH88yf/vQnzzOdnZ2eZzgbNgAAcSJAAAATBAgAYIIAAQBMECAAgAkCBAAwQYAAACYIEADABAECAJggQAAAEwQIAGCCAAEATHAyUvSqFStWeJ55++23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osrLy3Xs2DGL9XrU505G+mWffvqpTp48qezs7Jjrs7Oz9a9//ctoKxsFBQWqrKzU+PHj1dTUpJUrV+qGG27Qvn37lJqaar2eiebmZknq9vlx+raLxcyZM3X77bcrLy9PBw4c0COPPKLS0lLV1tZq8ODB1uslXFdXlxYvXqzrrrtOEydOlHTq+ZCSkqL09PSY+w7k50N3x0GS7r77bo0ePVqhUEh79+7Vww8/rLq6Or3++uuG28bq8wHC/5SWlkZ/PXnyZBUUFGj06NF67bXXdN999xluhr7gzjvvjP560qRJmjx5ssaOHavq6moVFRUZbpYcZWVl2rdv30XxPujZ9HQcFixYEP31pEmTlJOTo6KiIh04cEBjx47t7TW71ed/Cy4zM1ODBw8+41MsLS0tCgaDRlv1Denp6brqqqtUX19vvYqZ088Bnh9nGjNmjDIzMwfk82PRokV688039e6778b89S3BYFAnTpzQkSNHYu4/UJ8PPR2H7hQUFEhSn3o+9PkApaSkaMqUKaqqqope19XVpaqqKhUWFhpuZu/o0aM6cOCAcnJyrFcxk5eXp2AwGPP8iEQi2rlz50X//Pj44491+PDhAfX8cM5p0aJF2rhxo7Zt26a8vLyY26dMmaKhQ4fGPB/q6up08ODBAfV8ONdx6M6ePXskqW89H6w/BXE+XnnlFef3+11lZaX78MMP3YIFC1x6erprbm62Xq1XLV261FVXV7uGhgb317/+1RUXF7vMzEzX2tpqvVpStbW1uQ8++MB98MEHTpJ75pln3AcffOD+85//OOece+qpp1x6errbvHmz27t3r7v11ltdXl6e++yzz4w3T6yzHYe2tjb30EMPudraWtfQ0ODeeecdd80117hx48a548ePW6+eMAsXLnSBQMBVV1e7pqam6OXYsWPR+9x///1u1KhRbtu2bW7Xrl2usLDQFRYWGm6deOc6DvX19e7nP/+527Vrl2toaHCbN292Y8aMcdOmTTPePFa/CJBzzj3//PNu1KhRLiUlxU2dOtXt2LHDeqVed8cdd7icnByXkpLirrjiCnfHHXe4+vp667WS7t1333WSzrjMnTvXOXfqo9iPPfaYy87Odn6/3xUVFbm6ujrbpZPgbMfh2LFjbsaMGe7yyy93Q4cOdaNHj3bz588fcP+T1t0/vyS3du3a6H0+++wz96Mf/ch95StfcZdeeqm77bbbXFNTk93SSXCu43Dw4EE3bdo0l5GR4fx+v7vyyivdT3/6UxcOh20X/xL+OgYAgIk+/x4QAGBgIkAAABMECABgggABAEwQIACACQIEADBBgAAAJggQAMAEAQIAmCBAAAATBAgAYIIAAQBM/D/IdyOygK85DgAAAABJRU5ErkJggg==','1';
