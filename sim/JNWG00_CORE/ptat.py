#!/usr/bin/env python3
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import yaml
import os
import sys

scriptdir = os.path.dirname(os.path.realpath(sys.argv[0]))
sys.path.append(scriptdir)
from plot import *

def main(name):

  fig,ax = plt.subplots(2,1,figsize=(10,5),sharex=True)

  ax[1].set_xlabel("Temperature [C]")
  ax[0].set_ylabel("Current [uA]")
  plotFile(name,ax)
  ax[0].grid()
  ax[1].grid()
  ax[1].set_ylabel(" dI/dT [nA/C]")
  plt.tight_layout()

  foname = name +".png"
  plt.savefig(foname)
  print(f"INFO: saved {foname}")



if __name__ == "__main__":
  main("output_tran/tran_SchGtKttTtVt")
