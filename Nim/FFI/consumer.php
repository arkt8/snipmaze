<?php

$ffi = FFI::cdef(
    "const char* nim_test();",
    "./libprovider.so"
);
echo $ffi->nim_test();
