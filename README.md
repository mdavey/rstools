# rstools

Tools to encode/decode rs files compatible with EasyPal

*Sortof...*

Can make a rs file that can be sent using EasyDRF and decoded by EasyPal

Can take a rs file sent via EasyPal and decode it *(most of the time)*

Compiles on Windows using Cygwin (and I assume every other platform)

## Origin

All code taken from the trxamadrm project, specifically version: `v3_6_18nov14_64b`.

## Changes

- Made sure the memory was initialised rather than assuming it was
- Fixed a buffer overflow with with extensions, and added support for 4 letter extensions (like EasyPal).
- Added some *(very poorly written)* tests

## Todo

- Learn how to write a real `Makefile` and don't just copy paste lines until it runs
- There is 100% a bug were random data is added to the end of some files.  Sometimes.
- The command line interface leaves a lot to be desired
- Make some real test files, and not random files that I had lying about
