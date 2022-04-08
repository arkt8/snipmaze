#!/env/bin luajit
local ffi = require("ffi")
local clib = ffi.load("./libprovider.so")
ffi.cdef[[
const char* nim_test();
void free(void*);
]]

local lala = clib.nim_test()
--ffi.gc(lala,ffi.C.free)
local x = ffi.string(lala)
print(x..x)

