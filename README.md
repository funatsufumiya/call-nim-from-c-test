# call-nim-from-c-test

## Usage (build)

```bash
$ nim c --app:lib -d:release test.nim
$ gcc -o main -I. main.c -L. -ltest
$ ./main
# output: 15
```

## How to use nimpy from C/C++


check [nimpy](https://github.com/funatsufumiya/call-nim-from-c-test/tree/nimpy) branch!
