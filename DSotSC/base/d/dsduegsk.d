BEGIN ~DSDUEGSK~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("DSduegskel","GLOBAL",1)
~ EXIT
END
