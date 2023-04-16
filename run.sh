xdev = buildkite-agent meta-data get "xdev"
echo "xdev =" $xdev

xqa = buildkite-agent meta-data get "xqa"
echo "xqa =" $xqa

echo "Start the docker build"
docker build --tag mytest .

echo "Start running the docker container"
docker run --rm --env xdev=$xdev --env xqa=$xqa mytest