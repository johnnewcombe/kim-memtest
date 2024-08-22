


POINTL      EQU $FA                 ; LSB OF OPEN CELL
POINTH      EQU $FB                 ; MSB OF OPEN CELL
START       EQU $1C4F               ; ROM START ADDRESS

;SAD     EQU $1740           ;6530 A DATA


;  58                  SAD     =$1740           6530 A DATA
;  59                  PADD    =$1741           6530 A DATA DIRECTION
;  60                  SBD     =$1742           6530 B DATA
;  61                  PBDD    =$1743           6530 B DATA DIRECTION
;  62                  CLK1T   =$1744           DIV BY 1 TIME
;  63                  CLK8T   =$1745           DIV BY 8 TIME
;  64                  CLK64T  =$1746           DIV BY 64 TIME
;  65                  CLKKT   =$1747           DIV BY 1024 TIME
;  66                  CLKRDI  =$1747           READ TIME OUT BIT
;  67                  CLKRDT  =$1746           READ TIME
;  68                  ;
;  69   0000                   *=$00EF
;  70                  ;       MPU REG.  SAVX AREA IN PAGE 0
;  71                  ;
;  72   00EF           PCL     *=*+1 PROGRAM CNT LOW
;  73   00F0           PCH     *=*+1 PROGRAM CNT HI
;  74   00F1           PREG    *=*+1 CURRENT STATUS REG
;  75   00F2           SPUSER  *=*+1 CURRENT STACK POINTER
;  76   00F3           ACC     *=*+1 ACCUMULATOR
;  77   00F4           YREG    *=*+1 Y INDEX
;  78   00F5           XREG    *=*+1 X INDEX
;  79                  ;
;  80                  ;       KIM FIXED AREA IN PAGE 0
;  81                  ;
;  82   00F6           CHKHI   *=*+1
;  83   00F7           CHKSUM  *=*+1
;  84   00F8           INL     *=*+1 INPUT BUFFER
;  85   00F9           INH     *=*+1 INPUT BUFFER
;  88   00FC           TEMP    *=*+1
;  89   00FD           TMPX    *=*+1
;  90   00FE           CHAR    *=*+1
;  91   00FF           MODE    *=*+1
;  92                  ;
;  93                  ;       KIM FIXED AREA IN PAGE 23
;  94                  ;
;  95   0100                   *=$17E7
;  96   17E7           CHKL    *=*+1
;  97   17E8           CHKH    *=*+1            CHKSUM
;  98   17E9           SAVX    *=*+3
;  99   17EC           VEB     *=*+6            VOLATILE EXECUTION BLOCK
; 100   17F2           CNTL30  *=*+1            TTY DELAY
; 101   17F3           CNTH30  *=*+1            TTY DELAY
; 102   17F4           TIMH    *=*+1
; 103   17F5           SAL     *=*+1            LOW STARTING ADDRESS
; 104   17F6           SAH     *=*+1            HI STARTING ADDRESS
; 105   17F7           EAL     *=*+1            LOW ENDING ADDRESS;
; 106   17F8           EAH     *=*+1            HI ENDING ADDRESS
; 107   17F9           ID      *=*+1            TAPE PROGRAM ID NUMBER
; 108                  ;
; 109                  ;       INTERRUPT VECTORS
; 110                  ;
; 111   17FA           NMIV    *=*+2            STOP VECTOR (STOP=1C00)
; 112   17FC           RSTV    *=*+2            RST VECTOR
; 113   17FE           IRQV    *=*+2            IRQ VECTOR (BRK= 1C00)
; 114                  ;

