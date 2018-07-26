#!/usr/bin/env python

# Copyright 2018 ReactiveOps

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


""" Converts exported json datadog monitors to simplify working with them """

import json
import yaml
import re
import sys
import glob
import os
import logging


from pentagon.helpers import render_template

from pentagon_datadog.monitor import Monitor

logging.basicConfig(level="DEBUG")

monitors = []
for json_file in glob.glob("*.json"):
    print json_file
    yaml_file = re.sub("json", "yml", json_file)
    with open(json_file) as f:
        contents = f.read()

    dict_contents = json.loads(contents)
#    options = dict_contents.pop('options')
#    dict_contents.update(options)
#    monitors.append(dict_contents)

    with open(yaml_file, 'w+') as f:
        f.write(yaml.safe_dump(dict_contents))
