proc nitest(a:int):int {.exportc,dynlib.}=
    return a + 8
