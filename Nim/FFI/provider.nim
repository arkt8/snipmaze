
proc test() : cstring {.exportc: "nim_$1", dynlib.} =
  return "olá mundo"
