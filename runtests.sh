cucumber --tag @regression -f pretty -f json -o results.json
report_builder -o test-report
echo "upload report start"
. upload.sh
echo "upload report completed"
