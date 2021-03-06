[![Stable Release](https://img.shields.io/github/release/ctubio/ctubio.github.io.svg?label=stable%20release)](https://github.com/ctubio/ctubio.github.io/releases/latest)
[![Platform License](https://img.shields.io/badge/platform-unix--like-lightgray.svg)](https://www.gnu.org/)
[![Software License](https://img.shields.io/badge/license-MIT-111111.svg)](LICENSE)

[ctubio.github.io](https://ctubio.github.io) is a mighty installer
that provides a few [common files](src) for *new* or *orphan* projects.

[![Latest Tag](https://img.shields.io/github/tag/ctubio/ctubio.github.io.svg?label=latest%20tag)](https://github.com/ctubio/ctubio.github.io/tags)
[![Build Status](https://img.shields.io/travis/ctubio/ctubio.github.io/master.svg?label=test%20suite)](https://travis-ci.org/ctubio/ctubio.github.io)
[![Coverage Status](https://img.shields.io/coveralls/ctubio/ctubio.github.io/master.svg?label=code%20coverage)](https://coveralls.io/r/ctubio/ctubio.github.io?branch=master)
[![Open Issues](https://img.shields.io/github/issues/ctubio/ctubio.github.io.svg)](https://github.com/ctubio/ctubio.github.io/issues)
[![Chat Archives](https://img.shields.io/badge/chat-archives-1dce73.svg)](https://gitter.im/ctubio/ctubio.github.io/archives/all)

## Installing all *common files* via Bash/Curl in a swish

Hold tight, because you can quickly download all [common files](src)
into the root directory of your project (or any other local path of your
machine), using the [INSTALL](INSTALL) script remotely over https.

Face your tty, `mkdir` and/or `cd` into your new/orphan project,
and run the following command:

``` bash
$ bash -c "$(curl -s https://ctubio.github.io/INSTALL)"
```
Is the command too long? make an alias!
``` bash
$ echo "alias Yikes='bash -c "$(curl -s https://ctubio.github.io/INSTALL)"';" >> ~/.bash_aliases
$ source ~/.bash_aliases
```
now you can start all your new projects screaming to your tty ```Yikes```! :monkey_face: (give me thanks later [oh well, if you dont like create your own alias..])

## Strengthening rule *#2) Think before you type.*

After running the command above, and before download or install any file, you will be prompted:
```
Yikes!
Let's install some initial files for your new project.
 - Install path: /your/current/working/directory
Are you sure? [y/N]
>
```
### but, What if..
####..the install path already contains the downloaded files?
The conflict will be resolved with a
[simple backup method](http://www.gnu.org/software/tar/manual/tar.html#SEC90).
####..the manual prompt behaviour breaks your automated/silent/cron scripts?
If the installation is not meant to be run manually, you may want to check all options available:
```bash
$ bash -c "$(curl -s http://ctubio.github.io/INSTALL)" -- --help
```
```
Yikes!
Usage: INSTALL [option]
Options:
  -y, --yes     Auto-reply "yes" on install and install src files in $PWD.
  -n, --no      Auto-reply "no" on install and quit.
  -h, --help    Show this very same text and quit.
      --version Show current version number and quit.
```
####..i don't get it.. why? This is useless!
Feel free to clone or fork it, and used it for your own purposes by replacing the distributed [common files](src) by your own files, so you can save some of your time while daily working. ~~Then, i will tell you how much useless your [src](src) files look to me!~~
