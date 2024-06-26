# Copyright 2024 The Google Research Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash
for c in $(seq 1 26)
do
  python3 bag_ds_analysis/label_analysis_grp_key_1.py --c=$c
done

for c1 in $(seq 1 26)
do
  for c2 in $(seq $(($c1+1)) 26)
  do
    python3 bag_ds_analysis/label_analysis_grp_key_2.py --c1=$c1 --c2=$c2
  done
done
