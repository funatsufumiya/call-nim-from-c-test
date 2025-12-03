# call-nim-from-c-test

## Usage (build)

```bash
$ nim c --app:lib -d:release test.nim
$ gcc -o main -I. main.c -L. -ltest
$ ./main
# output: 15

# [NOTE] on Linux
# when if ./main: error while loading shared libraries: libtest.so: cannot open shared object file: No such file or directory

$ LD_LIBRARY_PATH=. ./main
```

## How to use nimpy from C/C++


check [nimpy](https://github.com/funatsufumiya/call-nim-from-c-test/tree/nimpy) branch!

