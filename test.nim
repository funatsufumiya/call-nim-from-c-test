import nimpy

proc get_python_version():cstring {.exportc,dynlib.}=
    let py = pyBuiltinsModule()
    let sys = pyImport("sys")
    return $(sys.version)
