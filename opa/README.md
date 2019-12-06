# OPA bundle example

Run OPA on policy files.
```
docker run -v $PWD:/workspace openpolicyagent/opa eval --format pretty --data workspace/policy --input workspace/input.json "data.examples"
```

To create a bundle. `-C` means switch to this directory before creating the archive.
```
tar -C ./policy -cvzf bundle.tar.gz .
```

Run OPA using the bundle.
```
docker run -v $PWD:/workspace openpolicyagent/opa eval --format pretty --bundle workspace/examples.tar.gz --input workspace/input.json "data.examples"
```

Run OPA using config file. Not sure how this is useful when running OPA in a build pipeline.
```
opa run -c config.yaml input.json
```
