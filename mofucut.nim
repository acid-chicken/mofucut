import system, os, strutils, unicode

if isMainModule and paramCount() == 2:
  let begin = os.commandLineParams()[0]
  let finish = os.commandLineParams()[1]
  echo runeSubStr(
    readLine stdin,
    if begin == "199000万": 1990000000 else: parseInt begin,
    if finish == "199000万": 1990000000 else: parseInt finish
  )
else:
  stderr.writeLine "Usage: mofucut STARTPOS ENDPOS"
  system.programResult = 1
  
