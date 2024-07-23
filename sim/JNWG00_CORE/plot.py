#!/usr/bin/env python3
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import yaml
import sys
import click

def plotFile(name,ax,onepoint=False):

  with open("replace.yaml") as fi:
    replace = yaml.safe_load(fi)

  temps = replace["temp_sweep"].split(" ")

  yamlfile = name + ".yaml"

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  x = list()
  y = list()
  coarse = list()
  fine = list()
  offset = 0
  for t in temps:
    x_t = int(t)
    x.append(x_t)
    key = "ibp_" + t
    if(key in obj):
      if(x_t == 25):
        offset = float(obj[key])*1e6
      y.append(float(obj[key])*1e6)

      coarse.append(obj["coarse_" + t])
      fine.append(obj["fine_" + t])

    else:
      y.append(float.nan)

  if(onepoint):
    y = np.array(y)-offset

  label = name.replace("output_tran/tran_","")

  ax[0].plot(x,y,label=label)
  ax[1].plot(x[1:],np.diff(y)/np.diff(x)*1000,label=label)
  if(len(ax) > 2):
    ax[2].plot(x,coarse,label=label + " coarse")
    ax[2].plot(x,fine,label=label + " fine")



@click.command()
@click.argument("runfile")
@click.option("--show/--no-show",default=True,help="Show plot, or save to file")
@click.option("--onepoint/--no-onepoint",default=False,help="One point calibration")

def plot(runfile,show,onepoint):

  fig,ax = plt.subplots(3,1,figsize=(10,9),sharex=True)

  with open(runfile) as fi:
    for line in fi:
      plotFile(line.strip(),ax,onepoint)

  for a in ax:
    a.grid()
    a.legend()
  ax[1].set_xlabel("Temperature [C]")
  ax[0].set_ylabel("Current [uA]")
  ax[1].set_ylabel(" dI/dT [nA/C]")
  plt.tight_layout()
  if(show):
    plt.show()
  else:
    plt.savefig(runfile.replace(".run",".svg"))

if __name__ == "__main__":
  plot()
