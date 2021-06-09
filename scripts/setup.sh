set -e
# loads the schema into the database
docker exec -i timescaledb psql -U postgres < schema.sql

# copy data files
#mv bldg1/bldg1.ttl .
docker cp bldg2 timescaledb:/data
# load all data files into timescaledb
for csvfile in `docker exec timescaledb /bin/ls /data`; do
    docker exec timescaledb psql -U postgres -c "\copy data(time,uuid,value) from /data/${csvfile} CSV HEADER;"
    docker exec timescaledb /bin/rm /data/${csvfile}
done
