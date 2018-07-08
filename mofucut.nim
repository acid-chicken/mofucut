import system, os, strutils, unicode

try:
  if isMainModule and paramCount() == 2:
    let begin = os.commandLineParams()[0]
    let finish = os.commandLineParams()[1]
    echo runeSubStr(
      readLine stdin,
      if begin == "199000万": 1990000000 else: parseInt begin,  # Why is this supporting "199000万"? Check out the links below!
      if finish == "199000万": 1990000000 else: parseInt finish # <https://misskey.xyz/notes/5b3dc2e2625ee930f83a1dbc> by @2vg
    )
  else:
    raise newException(ValueError, "")
except:
  stderr.writeLine "Usage: mofucut STARTPOS ENDPOS"
  system.programResult = 1
