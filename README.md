[![Stable Release](https://img.shields.io/github/release/ctubio/ctubio.github.io.svg?label=release)](https://github.com/ctubio/ctubio.github.io/releases/latest)
[![Platform License](https://img.shields.io/badge/platform-unix--like-lightgray.svg)](LICENSE)
[![Software License](https://img.shields.io/cocoapods/l/AFNetworking.svg)](LICENSE)

[![Latest Tag](https://img.shields.io/github/tag/ctubio/ctubio.github.io.svg?label=tag)](https://github.com/ctubio/ctubio.github.io/tag/latest)
[![Build Status](https://travis-ci.org/ctubio/ctubio.github.io.svg?branch=master)](https://travis-ci.org/ctubio/ctubio.github.io)
[![Coverage Status](https://coveralls.io/repos/ctubio/ctubio.github.io/badge.svg?branch=master)](https://coveralls.io/r/ctubio/ctubio.github.io?branch=master)
[![Open Issues](https://img.shields.io/github/issues/ctubio/ctubio.github.io.svg)](https://github.com/ctubio/ctubio.github.io/issues)

[ctubio.github.io](https://ctubio.github.io) is a mighty installer
that provides a few [common files](src) for *new* or *orphan* projects.

## Installing all *common files* via Bash/Curl in a swish

Hold tight, because you can quickly download all [common files](src)
into the root directory of your project (or any other local path of your
machine), using the [INSTALL](INSTALL) script remotely over https.

Face your tty, `mkdir` and/or `cd` into your new/orphan project,
and run the following command:

``` bash
$ bash -c "$(curl -s https://ctubio.github.io/INSTALL)";
```

If the install path already contains the downloaded files,
the conflict will be resolved with a
[simple backup method](http://www.gnu.org/software/tar/manual/tar.html#SEC90).
