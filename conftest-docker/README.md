# OPA bundle example using policy files baked into a Docker image

Run Conftest using local policy files.
```
docker run --rm -v $(pwd):/workspace -v $(pwd)/policy:/policy instrumenta/conftest test workspace/input.json
```

Build a Docker image with all the policy files baked in.
```
docker build . --tag custom-conftest
```

Run Conftest using baked in policy files.
```
docker run --rm -v $(pwd):/workspace custom-conftest test workspace/input.json
```