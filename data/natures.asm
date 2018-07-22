NatureNames:
	dw Hardy, Lonely, Brave, Adamant, Naughty
	dw Bold, Docile, Relaxed, Impish, Lax
	dw Timid, Hasty, Serious, Jolly, Naive
	dw Modest, Mild, Quiet, Bashful, Rash
	dw Calm, Gentle, Sassy, Careful, Quirky
	dw NoNature

Hardy:    db "Ardita@"
Lonely:   db "Schiva@"
Brave:    db "Audace@"
Adamant:  db "Decisa@"
Naughty:  db "Birbona@"
Bold:     db "Sicura@"
Docile:   db "Docile@"
Relaxed:  db "Placida@"
Impish:   db "Scaltra@"
Lax:      db "Fiacca@"
Timid:    db "Timida@"
Hasty:    db "Lesta@"
Serious:  db "Seria@"
Jolly:    db "Allegra@"
Naive:    db "Ingenua@"
Modest:   db "Modesta@"
Mild:     db "Mite@"
Quiet:    db "Quieta@"
Bashful:  db "Ritrosa@"
Rash:     db "Ardente@"
Calm:     db "Calma@"
Gentle:   db "Gentile@"
Sassy:    db "Vivace@"
Careful:  db "Cauta@"
Quirky:   db "Furba@"
NoNature: db "---@"


NatureIndicators:
	dw HardyInd, LonelyInd, BraveInd, AdamantInd, NaughtyInd
	dw BoldInd, DocileInd, RelaxedInd, ImpishInd, LaxInd
	dw TimidInd, HastyInd, SeriousInd, JollyInd, NaiveInd
	dw ModestInd, MildInd, QuietInd, BashfulInd, RashInd
	dw CalmInd, GentleInd, SassyInd, CarefulInd, QuirkyInd
	dw NoNatureInd

SassyInd:   db "<NL>" ; fallthrough
RashInd:    db "<NL>" ; fallthrough
ImpishInd:  db "<NL>" ; fallthrough
LonelyInd:  db "↑<NL>↓@"
NaiveInd:   db "<NL>" ; fallthrough
CarefulInd: db "<NL>" ; fallthrough
MildInd:    db "<NL>" ; fallthrough
BoldInd:    db "↓<NL>↑@"
QuietInd:   db "<NL>" ; fallthrough
LaxInd:     db "<NL>" ; fallthrough
AdamantInd: db "↑<NL><NL>↓@"
JollyInd:   db "<NL>" ; fallthrough
GentleInd:  db "<NL>" ; fallthrough
ModestInd:  db "↓<NL><NL>↑@"
RelaxedInd: db "<NL>" ; fallthrough
NaughtyInd: db "↑<NL><NL><NL>↓@"
HastyInd:   db "<NL>" ; fallthrough
CalmInd:    db "↓<NL><NL><NL>↑@"
BraveInd:   db "↑<NL><NL><NL><NL>↓@"
TimidInd:   db "↓<NL><NL><NL><NL>↑" ; fallthrough
HardyInd:
DocileInd:
SeriousInd:
BashfulInd:
QuirkyInd:
NoNatureInd: db "@"