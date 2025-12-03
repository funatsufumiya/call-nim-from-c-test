# call-nim-from-c-test

Nimpy branch (call nimpy from C/C++)

( see also [simple](https://github.com/funatsufumiya/call-nim-from-c-test/tree/simple) branch if you find simplest way without nimpy/python. )

## Usage (build)

```bash
$ nimble install nimpy
$ which python # default python should exist

$ nim c --app:lib -d:release test.nim
$ gcc -o main -I. main.c -L. -ltest
$ ./main
# 3.12.12 | packaged by conda-forge | (main, Oct 22 2025, 23:13:34) [MSC v.1944 64 bit (AMD64)]
```

> [!WARNING]
> If you got `(null)` on `./main` output, python interop is **failed**. Please check below.

## How to use different python other than default PATH one?

### Easy way

Call `conda activate xxx` just before call `./main`.

### More better (strict) way

Using `pyInitLibPath` and `pip install find_libpython` ( `python3 -c 'import find_libpython; print(find_libpython.find_libpython())'` ).

But I haven't succeeded especially on Windows.

https://github.com/yglukhov/nimpy/issues/46

Below is an example session on macOS (tests on interactive shell, inim):

```bash
$ pip install find_libpython
$ python3 -c 'import find_libpython; print(find_libpython.find_libpython())'
# /Users/fu/miniforge3/lib/libpython3.12.dylib

$ nimble install inim
$ inim
# 👑 INim 1.0.0
# Nim Compiler Version 2.2.4 [MacOSX: arm64] at /opt/homebrew/bin/nim
nim> import nimpy
nim> import nimpy/py_lib as pyLib
nim> pyLib.pyInitLibPath("/Users/fu/miniforge3/lib/libpython3.12.dylib")
nim> let py = pyBuiltinsModule()
nim> let sys = pyImport("sys")
nim> sys.version
# 3.12.10 | packaged by conda-forge | (main, Apr 10 2025, 22:21:36) [Clang 18.1.8 ] == type PyObject
```



