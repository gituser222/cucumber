cucumber --tag @regression -f pretty -f json -o results.json
mkdir reports
report_builder -o reports/test-report
