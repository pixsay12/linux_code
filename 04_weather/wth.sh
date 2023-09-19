#! /bin/bash
today=$(date +%Y%m%d)
weather_report=raw_data_$today
city=Jakarta
curl wttr.in/$city --output $weather_report
grep °C $weather_report > temperatures.txt
# extract the current temperature
obs_tmp=$(cat -A temperatures.txt | head -1 | cut -d "+" -f2 | cut -d "^" -f1 )
echo "observed temperature = $obs_tmp"
