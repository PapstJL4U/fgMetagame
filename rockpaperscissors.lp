\* rock_paper_scissors *\
Maximize
OBJ: vrs_w
Subject To
_C1: vrs_Anji >= 0
_C10: vrs_Millia >= 0
_C11: vrs_Gold >= 0
_C12: vrs_Leo >= 0
_C13: vrs_Ky >= 0
_C14: vrs_Nago >= 0
_C15: vrs_Ino >= 0
_C16: vrs_May >= 0
_C17: vrs_Anji + vrs_Axl + vrs_Chipp + vrs_Faust + vrs_Gio + vrs_Gold
 + vrs_Ino + vrs_Ky + vrs_Leo + vrs_May + vrs_Millia + vrs_Nago + vrs_Pot
 + vrs_Ram + vrs_Sol + vrs_Zato = 1
_C18: 0.07 vrs_Axl + 0.09 vrs_Chipp - 0.01 vrs_Faust + 0.07 vrs_Gio
 + 0.112 vrs_Gold - 0.05 vrs_Ino - 0.07 vrs_Ky + 0.132 vrs_Leo - 0.03 vrs_May
 + 0.05 vrs_Millia + 0.112 vrs_Nago + 0.292 vrs_Pot + 0.01 vrs_Ram
 + 0.272 vrs_Sol + 0.192 vrs_Zato - vrs_w >= 0
_C19: - 0.272 vrs_Anji + 0.07 vrs_Axl - 0.05 vrs_Chipp - 0.192 vrs_Faust
 - 0.03 vrs_Gio - 0.01 vrs_Gold - 0.112 vrs_Ino - 0.05 vrs_Ky - 0.07 vrs_Leo
 + 0.03 vrs_May - 0.2 vrs_Millia + 0.152 vrs_Nago + 0.03 vrs_Pot
 - 0.18 vrs_Ram - 0.192 vrs_Zato - vrs_w >= 0
_C2: vrs_Sol >= 0
_C20: - 0.192 vrs_Anji + 0.112 vrs_Axl + 0.172 vrs_Chipp - 0.03 vrs_Faust
 - 0.132 vrs_Gio - 0.09 vrs_Gold - 0.08 vrs_Ino + 0.03 vrs_Ky + 0.05 vrs_Leo
 + 0.132 vrs_May - 0.02 vrs_Millia + 0.09 vrs_Nago + 0.03 vrs_Pot
 + 0.01 vrs_Ram + 0.192 vrs_Sol - vrs_w >= 0
_C21: - 0.292 vrs_Anji + 0.132 vrs_Axl - 0.01 vrs_Chipp - 0.01 vrs_Faust
 - 0.14 vrs_Gio + 0.272 vrs_Gold + 0.03 vrs_Ino - 0.16 vrs_Ky - 0.172 vrs_Leo
 - 0.03 vrs_May - 0.112 vrs_Millia + 0.132 vrs_Nago + 0.112 vrs_Ram
 - 0.03 vrs_Sol - 0.03 vrs_Zato - vrs_w >= 0
_C22: - 0.01 vrs_Anji - 0.01 vrs_Axl + 0.112 vrs_Chipp - 0.132 vrs_Faust
 + 0.09 vrs_Gio + 0.06 vrs_Gold + 0.132 vrs_Ino + 0.01 vrs_Ky - 0.07 vrs_Leo
 + 0.07 vrs_May + 0.09 vrs_Millia + 0.1 vrs_Nago - 0.112 vrs_Pot
 + 0.18 vrs_Sol - 0.01 vrs_Zato - vrs_w >= 0
_C23: - 0.07 vrs_Anji + 0.06 vrs_Chipp - 0.374 vrs_Faust + 0.05 vrs_Gio
 - 0.272 vrs_Gold - 0.07 vrs_Ino - 0.12 vrs_Ky - 0.212 vrs_Leo - 0.112 vrs_May
 + 0.06 vrs_Millia - 0.112 vrs_Nago - 0.132 vrs_Pot + 0.01 vrs_Ram
 - 0.07 vrs_Sol - 0.112 vrs_Zato - vrs_w >= 0
_C24: - 0.09 vrs_Anji - 0.06 vrs_Axl - 0.152 vrs_Faust + 0.01 vrs_Gio
 - 0.112 vrs_Gold - 0.03 vrs_Ino - 0.05 vrs_Ky + 0.07 vrs_Leo + 0.05 vrs_May
 - 0.152 vrs_Millia - 0.112 vrs_Nago + 0.01 vrs_Pot - 0.112 vrs_Ram
 + 0.05 vrs_Sol - 0.172 vrs_Zato - vrs_w >= 0
_C25: 0.01 vrs_Anji + 0.374 vrs_Axl + 0.152 vrs_Chipp + 0.132 vrs_Gio
 + 0.07 vrs_Gold + 0.192 vrs_Ino + 0.01 vrs_Ky - 0.01 vrs_Leo + 0.09 vrs_May
 - 0.01 vrs_Millia + 0.07 vrs_Nago + 0.01 vrs_Pot + 0.132 vrs_Ram
 + 0.192 vrs_Sol + 0.03 vrs_Zato - vrs_w >= 0
_C26: - 0.07 vrs_Anji - 0.05 vrs_Axl - 0.01 vrs_Chipp - 0.132 vrs_Faust
 - 0.132 vrs_Gold + 0.09 vrs_Ino + 0.08 vrs_Ky + 0.132 vrs_Leo + 0.01 vrs_May
 - 0.01 vrs_Millia + 0.01 vrs_Nago + 0.14 vrs_Pot - 0.09 vrs_Ram
 + 0.03 vrs_Sol + 0.132 vrs_Zato - vrs_w >= 0
_C27: - 0.05 vrs_Anji - 0.06 vrs_Axl + 0.152 vrs_Chipp + 0.01 vrs_Faust
 + 0.01 vrs_Gio + 0.232 vrs_Gold + 0.172 vrs_Ino + 0.152 vrs_Ky
 + 0.152 vrs_Leo + 0.07 vrs_May + 0.152 vrs_Nago + 0.112 vrs_Pot
 - 0.09 vrs_Ram + 0.2 vrs_Sol + 0.02 vrs_Zato - vrs_w >= 0
_C28: - 0.112 vrs_Anji + 0.272 vrs_Axl + 0.112 vrs_Chipp - 0.07 vrs_Faust
 + 0.132 vrs_Gio - 0.01 vrs_Ino - 0.09 vrs_Ky - 0.152 vrs_Leo - 0.132 vrs_May
 - 0.232 vrs_Millia + 0.07 vrs_Nago - 0.272 vrs_Pot - 0.06 vrs_Ram
 + 0.01 vrs_Sol + 0.09 vrs_Zato - vrs_w >= 0
_C29: - 0.132 vrs_Anji + 0.212 vrs_Axl - 0.07 vrs_Chipp + 0.01 vrs_Faust
 - 0.132 vrs_Gio + 0.152 vrs_Gold - 0.14 vrs_Ino - 0.05 vrs_Ky - 0.05 vrs_May
 - 0.152 vrs_Millia + 0.172 vrs_Nago + 0.172 vrs_Pot + 0.07 vrs_Ram
 + 0.07 vrs_Sol - 0.05 vrs_Zato - vrs_w >= 0
_C3: vrs_Zato >= 0
_C30: 0.07 vrs_Anji + 0.12 vrs_Axl + 0.05 vrs_Chipp - 0.01 vrs_Faust
 - 0.08 vrs_Gio + 0.09 vrs_Gold + 0.01 vrs_Ino + 0.05 vrs_Leo - 0.05 vrs_May
 - 0.152 vrs_Millia + 0.16 vrs_Nago + 0.16 vrs_Pot - 0.01 vrs_Ram
 + 0.05 vrs_Sol - 0.03 vrs_Zato - vrs_w >= 0
_C31: - 0.112 vrs_Anji + 0.112 vrs_Axl + 0.112 vrs_Chipp - 0.07 vrs_Faust
 - 0.01 vrs_Gio - 0.07 vrs_Gold + 0.01 vrs_Ino - 0.16 vrs_Ky - 0.172 vrs_Leo
 - 0.05 vrs_May - 0.152 vrs_Millia - 0.132 vrs_Pot - 0.1 vrs_Ram
 - 0.152 vrs_Sol - 0.09 vrs_Zato - vrs_w >= 0
_C32: 0.05 vrs_Anji + 0.07 vrs_Axl + 0.03 vrs_Chipp - 0.192 vrs_Faust
 - 0.09 vrs_Gio + 0.01 vrs_Gold - 0.01 vrs_Ky + 0.14 vrs_Leo + 0.172 vrs_May
 - 0.172 vrs_Millia - 0.01 vrs_Nago - 0.03 vrs_Pot - 0.132 vrs_Ram
 + 0.112 vrs_Sol + 0.08 vrs_Zato - vrs_w >= 0
_C33: 0.03 vrs_Anji + 0.112 vrs_Axl - 0.05 vrs_Chipp - 0.09 vrs_Faust
 - 0.01 vrs_Gio + 0.132 vrs_Gold - 0.172 vrs_Ino + 0.05 vrs_Ky + 0.05 vrs_Leo
 - 0.07 vrs_Millia + 0.05 vrs_Nago + 0.03 vrs_Pot - 0.07 vrs_Ram
 - 0.03 vrs_Sol - 0.132 vrs_Zato - vrs_w >= 0
_C34: vrs_May = 1
_C4: vrs_Pot >= 0
_C5: vrs_Ram >= 0
_C6: vrs_Axl >= 0
_C7: vrs_Chipp >= 0
_C8: vrs_Faust >= 0
_C9: vrs_Gio >= 0
Bounds
 vrs_Anji free
 vrs_Axl free
 vrs_Chipp free
 vrs_Faust free
 vrs_Gio free
 vrs_Gold free
 vrs_Ino free
 vrs_Ky free
 vrs_Leo free
 vrs_May free
 vrs_Millia free
 vrs_Nago free
 vrs_Pot free
 vrs_Ram free
 vrs_Sol free
 vrs_Zato free
 vrs_w free
End
