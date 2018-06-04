# web-docker-build-legacy

## Possible usage

```bash
# enter bash
$: docker exec -it zeel-website-build bash

# launch grunt watch
$: docker exec -it zeel-website-build grunt

# do specific grunt task, f.e. build newer coffee2 files
$: docker exec -it zeel-website-build grunt newer:coffee2

# install packages
$: docker exec -it zeel-website-build yarn install

# install package, f.e. underscorejs
$: docker exec -it zeel-website-build yarn add underscorejs --dev
```
