[![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Latest Release](https://img.shields.io/github/release/ctubio/ctubio.github.io.svg)](/releases/latest)

[ctubio.github.io](https://ctubio.github.io) is a mighty installer
that provides a few [common files](src) for *new* or *orphan* projects.

## Installing via Bash/Curl

You can quickly download all [common files](src) into the root
directory of your project (or any other local path of your machine)
using the [INSTALL](INSTALL) script remotely over https.

Open your tty, `mkdir` and/or `cd` into your new/orphan project
and run the following command:

``` bash
$ bash -c "$(curl -s https://ctubio.github.io/INSTALL)";
```

If the install folder already contains the downloaded files,
the conflict will be resolved with a
[simple backup method](http://www.gnu.org/software/tar/manual/tar.html#SEC90).
