## Possible usage

```bash
# Enter bash
$: docker exec -it webapp-build-asset bash

# Launch grunt watch
$: docker exec -it webapp-build-asset grunt

# Run docker build
$: docker exec -it webapp-build-asset grunt build

# Install packages
$: docker exec -it webapp-build-asset yarn install

# Install package, f.e. underscorejs
$: docker exec -it webapp-build-asset yarn add underscorejs --dev

# Install different version of package, f.e. underscorejs
$: docker exec -it webapp-build-asset yarn add underscorejs1@npm:underscore@^1.0.0 --dev
```
