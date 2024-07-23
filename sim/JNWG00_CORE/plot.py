#!/usr/bin/env python3
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import yaml
import sys
import click

def plotFile(name,ax):


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

  ax[0].plot(x,y,label=name)
  ax[1].plot(x[1:],np.diff(y)/np.diff(x)*1000,label=name)



@click.command()
@click.argument("runfile")
@click.option("--show/--no-show",default=True,help="Show plot, or save to file")
def plot(runfile,show):

  fig,ax = plt.subplots(2,1,figsize=(10,5),sharex=True)

  with open(runfile) as fi:
    for line in fi:
      plotFile(line.strip(),ax)

  ax[0].grid()
  ax[1].grid()
  ax[1].set_xlabel("Temperature [C]")
  ax[0].set_ylabel("Current [uA]")
  ax[1].set_ylabel(" dI/dT [nA/C]")
  ax[0].legend()
  ax[1].legend()
  plt.tight_layout()
  if(show):
    plt.show()
  else:
    plt.savefig(runfile.replace(".run",".svg"))

if __name__ == "__main__":
  plot()
