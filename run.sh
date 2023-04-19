echo "xdev =" $(buildkite-agent meta-data get xdev)

x = $(buildkite-agent meta-data get xdev)
echo "x="
echo $x

echo "xqa =" $(buildkite-agent meta-data get xqa)

echo "Start the docker build"
docker build --tag mytest .

echo "Start running the docker container"
docker run --rm --env xdev=$(buildkite-agent meta-data get xdev) --env xqa=$(buildkite-agent meta-data get xqa) mytest
