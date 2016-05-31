@ECHO OFF

::::: COLORS :::::

SET n[0]=White
SET n[1]=Blue
SET n[2]=Green
SET n[3]=Aqua
SET n[4]=Red
SET n[5]=Purple
SET n[6]=Yellow
SET n[7]=Black
SET n[8]=Gray
SET n[9]=Light Blue
SET n[10]=Light Green
SET n[11]=Light Aqua
SET n[12]=Light Red
SET n[13]=Light Purple
SET n[14]=Light Yellow
SET n[15]=Bright White

::TODO find better solution than two arrays
SET m[0]=0
SET m[1]=1
SET m[2]=2
SET m[3]=3
SET m[4]=4
SET m[5]=5
SET m[6]=6
SET m[7]=7
SET m[8]=8
SET m[9]=9
SET m[10]=A
SET m[11]=B
SET m[12]=C
SET m[13]=D
SET m[14]=E
SET m[15]=F

::::: COLORS :::::


SETLOCAL ENABLEDELAYEDEXPANSION

 
:m

SET /A a=%RANDOM% %%16

::This may look weird, but it's necessary for some reason
FOR /l %%i IN (%a%,1,%a%) DO (
   SET b=!m[%%i]!
   COLOR %b%7
   ::FIXME is supposed to resolve the problem of displaying a black background, but is buggy :(
   if %%i EQU 7 COLOR %b%0
   PAUSE
   CLS
   ECHO New color is !n[%%i]!
)

goto m
