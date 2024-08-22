;=============================================================================
; Demo1 (c) J.L.Newcombe 2024 (mostly)
;
; Licence:
;       None
;
; Assembler:
;       Merlin32 compiler by Brutal Delux
;       https://www.brutaldeluxe.fr/products/crossdevtools/merlin/index.html
;
;-----------------------------------------------------------------------------
; Date          Comment
;-----------------------------------------------------------------------------
; 10.02.2024    Created for the Merlin32 compiler by Brutal Delux
;
;
;-----------------------------------------------------------------------------

            PUT ./include/kim-symbols.asm
            PUT ./include/defs.asm
            PUT ./include/macros.asm



            MX  %11                 ; 11 tells Merlin32 that A, X and Y are
                                    ;   8 bit registers

            DS 2                    ; reserve 2 bytes for BEGIN and END blocks
            LDA #0
            TAY
            STA POINTL
BIGLP       STA FLAG
            LDX #2
            STX MOD
PASS        LDA BEGIN               ; LDA BEGIN
            STA POINTH
            LDX END
            LDA FLAG
            EOR #$FF
            STA FLIP
CLEAR       STA (POINTL),Y
            INY
            BNE CLEAR
            INC POINTH
            CPX POINTH
            BCS CLEAR
            LDX MOD
            LDA BEGIN
            STA POINTH
FILL        LDA FLAG
TOP         DEX
            BPL SKIP

            LDX #2
            STA (POINTL),Y
SKIP        INY
            BNE TOP
            INC POINTH
            LDA END
            CMP POINTH
            BCS FILL
            LDA BEGIN
            STA POINTH
            LDX MOD
POP         LDA FLIP
            DEX
            BPL SLIP
            LDX #2
            LDA FLAG
SLIP        CMP (POINTL),Y
            BNE OUT
            INY
            BNE POP
            INC POINTH
            LDA END
            CMP POINTH
            BCS POP
            DEC MOD
            BPL PASS
            LDA FLAG
            EOR #$FF
            BMI BIGLP
OUT         STY POINTL
            JMP START

            PUT ./include/lib.asm

