#!/bin/bash
mods=""

# Read the mod list from viking_mods.txt and append each line to "mods" variable
while IFS= read -r line; do
  mods+="$line;"
done < spearhead_mods.txt

# Start the server with the mod list. **REMOVED: -noLogs
./arma3server_x64 -name=viking -config=server.cfg -cfg=performance.cfg -limitFPS=700 -enableHT -loadMissionToMemory -autoInit -hugepages -mod="$mods;gm;vn;spe"



