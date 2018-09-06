Build locally and start input watcher:

```
docker build -t presentation-builder:local ./presentation-builder/
docker run -ti --rm -v "$(pwd)/input:/input" -v "$(pwd)/output:/output" presentation-builder:local
```


Start input watcher from prebuilt:

```
docker run -ti --rm -v "$(pwd)/input:/input" -v "$(pwd)/output:/output" justinvanwinkle/presentation-builder
```

Edit files in input, watch output appear in output :)
