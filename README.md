# latex-podman

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/lg7w10usi80v8w6v/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/latex-podman/branch/master) |

LaTeX Dockerfile.


## Building

```
podman build -t extra2000/latex .
```


## Importing SELinux Policy

```
sudo semodule -i selinux/latex.cil /usr/share/udica/templates/base_container.cil
```
