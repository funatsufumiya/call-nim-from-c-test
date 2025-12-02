# call-nim-from-c-test

## Usage (build)

```bash
$ nim c --app:lib -d:release test.nim
$ gcc -o main -I. main.c -L. -ltest
$ ./main
# output: 15
```