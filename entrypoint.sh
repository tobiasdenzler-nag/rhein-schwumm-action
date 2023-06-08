#!/bin/sh -l

temp=$(curl -s "https://data.bs.ch/api/records/1.0/search/?dataset=100046&q=&rows=1&sort=startzeitpunkt&facet=startzeitpunkt" --header 'Accept: application/json' | jq '.records[].fields.rus_w_o_s3_te')
echo "temperature=$temp" >> $GITHUB_OUTPUT