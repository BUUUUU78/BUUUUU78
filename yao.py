# -*- coding: utf-8 -*-
"""
Spyder 编辑器

这是一个临时脚本文件。
"""

import pandas as pd
import numpy as np

data=pd.read_excel(r'E:\2018-2021回款数据.xlsx')

print(data)
print(data.corr())