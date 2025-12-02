proc nitest(a:int):int {.exportc,dynlib.}=
    return a+8 # 引数に8を足した数を返す
