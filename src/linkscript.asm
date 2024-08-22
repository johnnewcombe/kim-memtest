*
*  linkscript.asm
*  Merlin32 Cross Compiler
*
*  Created by John Newcombe on 21/08/24.

    typ $06         ; file type (06=bin, FF=sys)
    dsk memtest     ; name of binary file
    org $00         ;

    asm memtest.asm
    sna memtest     ; segment name

