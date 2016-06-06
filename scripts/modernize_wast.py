#! /usr/bin/env python

import os
import shutil
import subprocess
import sys

from support import split_wast, run_command

META = ';; METADATA'

for f in sys.argv[1:]:
  print f
  previous = open(f).read()
  meta = ''
  if META in previous:
    wast, meta = previous.split(META)
  actual = ''
  for module, asserts in split_wast(f):
    assert len(asserts) == 0
    with open('split.wast', 'w') as o: o.write(module)
    cmd = [os.path.join('bin', 'wasm-opt'), 'split.wast', '--drop-return-values', '--print']
    actual += run_command(cmd)
  with open(f, 'w') as o: o.write(actual + ('' if not meta else (META + meta)))

