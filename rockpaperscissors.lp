\* rock_paper_scissors *\
Maximize
OBJ: vrs_w
Subject To
_C1: vrs_May >= 0
_C10: vrs_Zato=1 >= 0
_C11: vrs_Anji >= 0
_C12: vrs_Nago >= 0
_C13: vrs_Ky >= 0
_C14: vrs_Millia >= 0
_C15: vrs_Gold >= 0
_C16: vrs_Faust >= 0
_C17: vrs_Anji + vrs_Axl + vrs_Chipp + vrs_Faust + vrs_Gio + vrs_Gold
 + vrs_I_No + vrs_Ky + vrs_Leo + vrs_May + vrs_Millia + vrs_Nago + vrs_Pot
 + vrs_Ram + vrs_Sol + vrs_Zato=1 = 1
_C18: 0.1 vrs_Anji - 0.4 vrs_Axl + 0.2 vrs_Chipp - 0.3 vrs_Faust - 0.1 vrs_Gio
 - 0.3 vrs_I_No - 0.2 vrs_Ky - 0.2 vrs_Millia - 0.1 vrs_Nago - 0.2 vrs_Ram
 + 0.2 vrs_Sol - 0.2 vrs_Zato=1 - vrs_w >= 0
_C19: - 0.2 vrs_Anji + 0.1 vrs_Axl - 0.2 vrs_Chipp - 0.3 vrs_Faust
 - 0.1 vrs_Gio + 0.1 vrs_Gold - 0.3 vrs_I_No - 0.2 vrs_May - 0.2 vrs_Millia
 + 0.2 vrs_Nago - 0.3 vrs_Pot - 0.1 vrs_Ram - 0.1 vrs_Zato=1 - vrs_w >= 0
_C2: vrs_Sol >= 0
_C20: - 0.1 vrs_Anji - 0.2 vrs_Axl - 0.3 vrs_Faust - 0.2 vrs_Gio
 - 0.1 vrs_Gold - 0.1 vrs_Ky - 0.2 vrs_May - 0.1 vrs_Millia - 0.2 vrs_Pot
 + 0.2 vrs_Sol - 0.1 vrs_Zato=1 - vrs_w >= 0
_C21: - 0.2 vrs_Anji + 0.2 vrs_Chipp - 0.2 vrs_Faust - 0.5 vrs_Gold
 - 0.1 vrs_I_No - 0.3 vrs_Ky - 0.1 vrs_Leo + 0.4 vrs_May + 0.1 vrs_Millia
 - 0.1 vrs_Nago - 0.2 vrs_Pot - 0.1 vrs_Sol - vrs_w >= 0
_C22: - 0.1 vrs_Anji + 0.1 vrs_Axl - 0.1 vrs_Faust - 0.1 vrs_Gio
 - 0.1 vrs_Gold - 0.1 vrs_Millia - 0.1 vrs_Nago - 0.1 vrs_Pot + 0.1 vrs_Ram
 - 0.1 vrs_Zato=1 - vrs_w >= 0
_C23: 0.2 vrs_Anji + 0.1 vrs_Axl - 0.2 vrs_Faust - 0.1 vrs_Gio - 0.1 vrs_Gold
 - 0.2 vrs_Ky + 0.3 vrs_May - 0.1 vrs_Nago - 0.1 vrs_Pot - 0.1 vrs_Ram
 + 0.3 vrs_Sol - vrs_w >= 0
_C24: - 0.2 vrs_Anji + 0.2 vrs_Axl + 0.2 vrs_Chipp - 0.1 vrs_Faust
 - 0.2 vrs_Gio + 0.1 vrs_I_No - 0.3 vrs_Ky + 0.1 vrs_Leo - 0.3 vrs_Millia
 + 0.1 vrs_Ram + 0.3 vrs_Sol + 0.1 vrs_Zato=1 - vrs_w >= 0
_C25: - 0.2 vrs_Faust + 0.1 vrs_I_No - 0.1 vrs_Ky - 0.1 vrs_Leo + 0.2 vrs_May
 + 0.2 vrs_Millia + 0.1 vrs_Nago - 0.1 vrs_Pot + 0.1 vrs_Sol - 0.2 vrs_Zato=1
 - vrs_w >= 0
_C26: 0.1 vrs_Anji + 0.2 vrs_Chipp - 0.2 vrs_Faust - 0.1 vrs_Gold
 + 0.1 vrs_I_No - 0.1 vrs_Ky + 0.1 vrs_Leo + 0.1 vrs_May - 0.2 vrs_Nago
 + 0.2 vrs_Pot + 0.1 vrs_Sol - vrs_w >= 0
_C27: 0.1 vrs_Anji + 0.1 vrs_Chipp + 0.1 vrs_Faust - 0.2 vrs_Gold
 + 0.1 vrs_Leo + 0.2 vrs_May - 0.3 vrs_Nago - 0.1 vrs_Pot + 0.2 vrs_Ram
 + 0.1 vrs_Sol - vrs_w >= 0
_C28: 0.2 vrs_Axl + 0.1 vrs_Chipp - 0.1 vrs_Gio + 0.1 vrs_Gold - 0.2 vrs_I_No
 + 0.1 vrs_Leo - 0.1 vrs_May + 0.2 vrs_Pot + 0.2 vrs_Sol - 0.1 vrs_Zato=1
 - vrs_w >= 0
_C29: 0.1 vrs_Axl + 0.1 vrs_Faust + 0.2 vrs_Gio - 0.2 vrs_Gold + 0.1 vrs_I_No
 - 0.1 vrs_Ky + 0.1 vrs_Leo + 0.1 vrs_May - 0.1 vrs_Ram - 0.2 vrs_Sol
 + 0.3 vrs_Zato=1 - vrs_w >= 0
_C3: vrs_Chipp >= 0
_C30: 0.3 vrs_Axl + 0.1 vrs_Chipp - 0.1 vrs_Faust + 0.1 vrs_Gio + 0.2 vrs_I_No
 + 0.2 vrs_May - 0.1 vrs_Millia + 0.1 vrs_Nago + 0.3 vrs_Pot + 0.1 vrs_Ram
 - vrs_w >= 0
_C31: - 0.1 vrs_Axl + 0.1 vrs_Chipp + 0.2 vrs_Gold + 0.1 vrs_Ky + 0.1 vrs_Leo
 + 0.2 vrs_May + 0.3 vrs_Pot - 0.2 vrs_Ram + 0.2 vrs_Sol - vrs_w >= 0
_C32: - 0.1 vrs_Anji + 0.5 vrs_Axl + 0.1 vrs_Chipp + 0.1 vrs_Gio
 + 0.1 vrs_I_No + 0.1 vrs_Leo - 0.2 vrs_Millia + 0.2 vrs_Nago - 0.1 vrs_Sol
 + 0.2 vrs_Zato=1 - vrs_w >= 0
_C33: 0.2 vrs_Axl + 0.3 vrs_Chipp + 0.2 vrs_Gio + 0.2 vrs_I_No + 0.1 vrs_Ky
 + 0.3 vrs_May - 0.1 vrs_Nago + 0.1 vrs_Pot + 0.2 vrs_Ram + 0.3 vrs_Sol
 - 0.1 vrs_Zato=1 - vrs_w >= 0
_C34: vrs_Faust = 1
_C4: vrs_Axl >= 0
_C5: vrs_Leo >= 0
_C6: vrs_I_No >= 0
_C7: vrs_Pot >= 0
_C8: vrs_Ram >= 0
_C9: vrs_Gio >= 0
Bounds
vrs_Anji free
vrs_Axl free
vrs_Chipp free
vrs_Faust free
vrs_Gio free
vrs_Gold free
vrs_I_No free
vrs_Ky free
vrs_Leo free
vrs_May free
vrs_Millia free
vrs_Nago free
vrs_Pot free
vrs_Ram free
vrs_Sol free
vrs_Zato=1 free
vrs_w free
End
