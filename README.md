# call-nim-from-c-test

## Usage (build)

```bash
$ nimble install nimpy
$ which python # default python should exist

$ nim c --app:lib -d:release test.nim
$ gcc -o main -I. main.c -L. -ltest
$ ./main
# 3.12.12 | packaged by conda-forge | (main, Oct 22 2025, 23:13:34) [MSC v.1944 64 bit (AMD64)]
```