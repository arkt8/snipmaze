# Nim FFI

A simple kickstart...

Compile nim code: 
    nim c --app:lib provider.nim

It will compile the file `libprovider.so` or `libprovider.dll`

Then you can run the `lua consumer.lua` or `php consumer.php` that will
read the foreign function from `libprovider.so`

That's all.
