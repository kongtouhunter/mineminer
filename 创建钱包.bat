@echo off
setlocal enabledelayedexpansion

set /p numWallets=wallet quantity
set /a count=0

:loop
if %count% geq %numWallets% (
  choice /c eac /n /m "mission completed Press E out  A continue "
  if errorlevel 2 (
    set /a count+=1
    goto loop
  ) else (
    exit
  )
)

.\mineral-win.exe create-wallet
set /a count+=1
goto loop
