x-dev = buildkite-agent meta-data get "x-dev"
echo "x-dev =" $x-dev

x-dev = buildkite-agent meta-data get "x-qa"
echo "x-qa =" $x-qa

echo "Start the docker build"
docker build --tag mytest .

echo "Start running the docker container"
docker run --rm mytest --env x-dev=$x-dev --env x-qa=$x-qa