##https://1genomics.com/lightgbm_gpu/

from sklearn.datasets import make_classification
from sklearn.model_selection import train_test_split
import lightgbm as lgbm

X,y = make_classification(n_samples=2000000, n_features=100, n_classes=2)
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25)

import time
start = time.time()
model = lgbm.LGBMClassifier(device="gpu")  # 5.3s
#model = lgbm.LGBMClassifier()  # 9.83s, 10CPU cores
model.fit(X_train, y_train)
print("Time:",time.time()-start)
