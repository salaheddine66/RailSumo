from __future__ import absolute_import
from __future__ import print_function

import os
import sys
import optparse
import random 
import os, sys

if 'SUMO_HOME' in os.environ:
    tools = os.path.join(os.environ['SUMO_HOME'], 'tools')
    sys.path.append(tools)
else:
    sys.exit("please declare environment variable 'SUMO_HOME'")

from sumolib import checkBinary  # noqa
import traci  # noqa

sumoBinary = r"C:\Users\pro\Desktop\new sumo\sumo-1.7.0\bin"
sumoCmd = [sumoBinary, "-c", "osm.sumocfg"]


import traci
traci.start(sumoCmd)
step = 0
while step < 1000:
   traci.simulationStep()
   if traci.inductionloop.getLastStepVehicleNumber("0") > 0:
       traci.trafficlight.setRedYellowGreenState("0", "GrGr")
   step += 1

traci.close()