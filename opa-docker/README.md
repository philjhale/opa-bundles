# OPA bundle example using a policy files based into Docker image

Build a Docker image with all the policy files baked in.
```
docker build . --tag customopa
```

Run OPA using baked in policy files.
```
docker run -v $PWD:/workspace customopa eval --format pretty --data /policy --input workspace/input.json "data.examples"
```