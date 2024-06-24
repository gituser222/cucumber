cucumber --tag @regression -f pretty -f json -o results.json
report_builder -o test-report
echo "upload report start"
source upload.sh
echo "upload report completed"
