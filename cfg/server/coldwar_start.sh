#!/bin/bash
mods=""

# Read the mod list from viking_mods.txt and append each line to "mods" variable
while IFS= read -r line; do
  mods+="$line;"
done < coldwar_mods.txt

# Start the server with the mod list. **REMOVED: -autoInit
./arma3server_x64 -name=viking -config=server.cfg -cfg=performance.cfg -limitFPS=700 -enableHT -loadMissionToMemory -hugepages -noLogs -mod="$mods;gm;vn"



