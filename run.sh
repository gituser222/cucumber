echo "xdev =" $(buildkite-agent meta-data get xdev)

echo "xqa =" $(buildkite-agent meta-data get xqa)

echo $(buildkite-agent meta-data get feature)
feature_file=$(buildkite-agent meta-data get feature)

echo "Start the docker build"
docker build --tag mytest .

echo "Start running the docker container"
docker run --rm --env xdev=$(buildkite-agent meta-data get xdev) --env xqa=$(buildkite-agent meta-data get xqa) --env feature=$(buildkite-agent meta-data get feature) mytest