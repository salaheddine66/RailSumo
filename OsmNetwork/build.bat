python "%SUMO_HOME%\tools\ptlines2flows.py" -n osm.net.xml -e 3600 -p 600 --random-begin --seed 42 --ptstops osm_stops.add.xml --ptlines osm_ptlines.xml -o osm_pt.rou.xml --ignore-errors --vtype-prefix pt_ --stopinfos-file stopinfos.xml --routes-file vehroutes.xml --trips-file trips.trips.xml --min-stops 0 --extend-to-fringe --verbose
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 2 -p 0.903358 -o osm.pedestrian.trips.xml -e 3600 -r osm.pedestrian.rou.xml --vehicle-class pedestrian --persontrips --prefix ped --trip-attributes "modes=\"public\"" --additional-files osm_stops.add.xml,osm_pt.rou.xml
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 5 -p 2.160154 -o osm.passenger.trips.xml -e 3600 --vehicle-class passenger --vclass passenger --prefix veh --min-distance 300 --trip-attributes "departLane=\"best\"" --fringe-start-attributes "departSpeed=\"max\"" --allow-fringe.min-length 1000 --lanes --validate
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 20 -p 57.044306 -o osm.tram.trips.xml -e 3600 --vehicle-class tram --vclass tram --prefix tram --fringe-start-attributes "departSpeed=\"max\"" --min-distance 1200 --trip-attributes "departLane=\"best\"" --validate
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 40 -p 11.153023 -o osm.rail.trips.xml -e 3600 --vehicle-class rail --vclass rail --prefix rail --fringe-start-attributes "departSpeed=\"max\"" --min-distance 2400 --trip-attributes "departLane=\"best\"" --validate
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --seed 42 --fringe-factor 40 -p 13.996530 -o osm.rail_urban.trips.xml -e 3600 --vehicle-class rail_urban --vclass rail_urban --prefix urban --fringe-start-attributes "departSpeed=\"max\"" --min-distance 1800 --trip-attributes "departLane=\"best\"" --validate
