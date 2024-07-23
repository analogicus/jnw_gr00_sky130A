#!/usr/bin/env python3
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import yaml

def main(name):


  with open("replace.yaml") as fi:
    replace = yaml.safe_load(fi)

  temps = replace["temp_sweep"].split(" ")

  yamlfile = name + ".yaml"

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  x = list()
  y = list()
  for t in temps:
    x.append(int(t))
    key = "ibp_" + t
    if(key in obj):
      y.append(float(obj[key])*1e6)
    else:
      y.append(float.nan)

  foname = name + ".png"

  fig,ax = plt.subplots(2,1,figsize=(10,5),sharex=True)
  ax[0].plot(x,y)
  ax[1].set_xlabel("Temperature [C]")
  ax[0].set_ylabel("Current [uA]")
  ax[1].plot(x[1:],np.diff(y)/np.diff(x)*1000)
  ax[0].grid()
  ax[1].grid()
  ax[1].set_ylabel(" dI/dT [nA/C]")
  plt.tight_layout()
  plt.savefig(foname)


  # Save new yaml file
  with open(yamlfile,"w") as fo:
    yaml.dump(obj,fo)


if __name__ == "__main__":
  main("output_tran/tran_SchGtKttTtVt")
