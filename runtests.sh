cucumber --tag @regression -f pretty -f json -o results.json
report_builder -o test-report
echo "upload report start"
chmod +x ./upload.sh
./upload.sh
echo "upload report completed"
