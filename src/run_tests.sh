#!/bin/bash
SRC="test_data/test_pattern.png"

cp "$SRC" 1.png
cp "$SRC" 2.png
cp "$SRC" 3.png
cp "$SRC" 4.png

./rs1encode.exe 1.png
./rs2encode.exe 2.png
./rs3encode.exe 3.png
./rs4encode.exe 4.png

rm 1.png
rm 2.png
rm 3.png
rm 4.png

./rs1decode.exe 1.rs1
./rs2decode.exe 2.rs2
./rs3decode.exe 3.rs3
./rs4decode.exe 4.rs4

md5sum.exe "$SRC" 1.png 2.png 3.png 4.png 

rm 1.rs1 2.rs2 3.rs3 4.rs4 1.png 2.png 3.png 4.png



SRC="test_data/test_pattern.avif"

cp "$SRC" 1.avif
cp "$SRC" 2.avif
cp "$SRC" 3.avif
cp "$SRC" 4.avif

./rs1encode.exe 1.avif
./rs2encode.exe 2.avif
./rs3encode.exe 3.avif
./rs4encode.exe 4.avif

rm 1.avif
rm 2.avif
rm 3.avif
rm 4.avif

./rs1decode.exe 1.rs1
./rs2decode.exe 2.rs2
./rs3decode.exe 3.rs3
./rs4decode.exe 4.rs4

md5sum.exe "$SRC" 1.avif 2.avif 3.avif 4.avif

rm 1.rs1 2.rs2 3.rs3 4.rs4 1.avif 2.avif 3.avif 4.avif


# This test was made in EasyPal
# And a modified version of rs1decode to support 4 letter extensions
cp "test_data/easypal_help.rs1" .
./rs1decode easypal_help.rs1
md5sum.exe "test_data/easypal_help.docx" easypal_help.docx
rm easypal_help.rs1
rm easypal_help.docx



# This is a RS4 file from EasyPal too, with a AVIF inside
# This works without changes because the AVIF file starts with a null byte so the strcpy doesn't overflow  (oh god)
cp "test_data/avif_from_easypal.rs4" .
./rs4decode avif_from_easypal.rs4
md5sum.exe "test_data/avif_from_easypal.avif" avif_from_easypal.avif
rm avif_from_easypal.rs4
rm avif_from_easypal.avif