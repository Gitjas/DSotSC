REPLACE_STATE_TRIGGER ELMIN3 0 ~!PartyHasItem("DSMACE01")~ 

APPEND ~ELMIN3~

IF ~PartyHasItem("DSMACE01")~ THEN BEGIN EL6
  SAY @1
  IF ~~ THEN REPLY @2 GOTO EL7
  IF ~~ THEN REPLY @3 GOTO EL8
END

IF ~~ THEN BEGIN EL7
  SAY @4
  IF ~~ THEN DO ~TakePartyItem("DSMACE01")
SmallWait(5)
ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT)
SmallWait(5)
GiveItemCreate("DSMACE02",LastTalkedToBy(),1,1,0)
EscapeArea()~ JOURNAL @5 EXIT
END

IF ~~ THEN BEGIN EL8
  SAY @6
  IF ~~ THEN DO ~TakePartyItem("DSMACE01")
SmallWait(5)
ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT)
SmallWait(5)
GiveItemCreate("DSMACE02",LastTalkedToBy(),1,1,0)
EscapeArea()~ JOURNAL @7 EXIT
END

END
