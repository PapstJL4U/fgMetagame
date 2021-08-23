\* rock_paper_scissors *\
Maximize
OBJ: vrs_w
Subject To
_C1: vrs_May >= 0
_C10: vrs_Zat >= 0
_C11: vrs_Anj >= 0
_C12: vrs_Nag >= 0
_C13: vrs_Ky >= 0
_C14: vrs_Mil >= 0
_C15: vrs_Gol >= 0
_C16: vrs_Fau >= 0
_C17: vrs_Anj + vrs_Axl + vrs_Chp + vrs_Fau + vrs_Gio + vrs_Gol + vrs_INo
 + vrs_Ky + vrs_Leo + vrs_May + vrs_Mil + vrs_Nag + vrs_Pot + vrs_Ram
 + vrs_Sol + vrs_Zat = 1
_C18: 0.1 vrs_Anj - 0.4 vrs_Axl + 0.1 vrs_Chp - 0.3 vrs_Fau - 0.1 vrs_Gio
 - 0.3 vrs_INo - 0.2 vrs_Ky - 0.2 vrs_Mil - 0.1 vrs_Nag - 0.2 vrs_Ram
 + 0.2 vrs_Sol - 0.2 vrs_Zat - vrs_w >= 0
_C19: - 0.2 vrs_Anj + 0.1 vrs_Axl - 0.2 vrs_Chp - 0.3 vrs_Fau - 0.1 vrs_Gio
 + 0.1 vrs_Gol - 0.3 vrs_INo - 0.2 vrs_May - 0.2 vrs_Mil + 0.2 vrs_Nag
 - 0.3 vrs_Pot - 0.1 vrs_Ram - 0.1 vrs_Zat - vrs_w >= 0
_C2: vrs_Sol >= 0
_C20: - 0.1 vrs_Anj - 0.2 vrs_Axl - 0.3 vrs_Fau - 0.2 vrs_Gio - 0.1 vrs_Gol
 - 0.1 vrs_Ky - 0.2 vrs_May - 0.1 vrs_Mil - 0.2 vrs_Pot + 0.2 vrs_Sol
 - 0.1 vrs_Zat - vrs_w >= 0
_C21: - 0.2 vrs_Anj + 0.2 vrs_Chp - 0.2 vrs_Fau - 0.5 vrs_Gol - 0.1 vrs_INo
 - 0.3 vrs_Ky - 0.1 vrs_Leo + 0.4 vrs_May + 0.1 vrs_Mil - 0.1 vrs_Nag
 - 0.2 vrs_Pot - 0.1 vrs_Sol - vrs_w >= 0
_C22: - 0.1 vrs_Anj + 0.1 vrs_Axl - 0.1 vrs_Fau - 0.1 vrs_Gio - 0.1 vrs_Gol
 - 0.1 vrs_Mil - 0.1 vrs_Nag - 0.1 vrs_Pot + 0.1 vrs_Ram - 0.1 vrs_Zat - vrs_w
 >= 0
_C23: 0.2 vrs_Anj + 0.1 vrs_Axl - 0.2 vrs_Fau - 0.1 vrs_Gio - 0.1 vrs_Gol
 - 0.2 vrs_Ky + 0.3 vrs_May - 0.1 vrs_Nag - 0.1 vrs_Pot - 0.1 vrs_Ram
 + 0.3 vrs_Sol - vrs_w >= 0
_C24: - 0.2 vrs_Anj + 0.2 vrs_Axl + 0.2 vrs_Chp - 0.1 vrs_Fau - 0.2 vrs_Gio
 + 0.1 vrs_INo - 0.3 vrs_Ky + 0.1 vrs_Leo - 0.3 vrs_Mil + 0.1 vrs_Ram
 + 0.3 vrs_Sol + 0.1 vrs_Zat - vrs_w >= 0
_C25: - 0.2 vrs_Fau + 0.1 vrs_INo - 0.1 vrs_Ky - 0.1 vrs_Leo + 0.2 vrs_May
 + 0.2 vrs_Mil + 0.1 vrs_Nag - 0.1 vrs_Pot + 0.1 vrs_Sol - 0.2 vrs_Zat - vrs_w
 >= 0
_C26: 0.1 vrs_Anj + 0.2 vrs_Chp - 0.2 vrs_Fau - 0.1 vrs_Gol + 0.1 vrs_INo
 - 0.1 vrs_Ky + 0.1 vrs_Leo + 0.1 vrs_May - 0.2 vrs_Nag + 0.2 vrs_Pot
 + 0.1 vrs_Sol - vrs_w >= 0
_C27: 0.1 vrs_Anj + 0.1 vrs_Chp + 0.1 vrs_Fau - 0.2 vrs_Gol + 0.1 vrs_Leo
 + 0.2 vrs_May - 0.3 vrs_Nag - 0.1 vrs_Pot + 0.2 vrs_Ram + 0.1 vrs_Sol - vrs_w
 >= 0
_C28: 0.2 vrs_Axl + 0.1 vrs_Chp - 0.1 vrs_Gio + 0.1 vrs_Gol - 0.2 vrs_INo
 + 0.1 vrs_Leo - 0.1 vrs_May + 0.2 vrs_Pot + 0.2 vrs_Sol - 0.1 vrs_Zat - vrs_w
 >= 0
_C29: 0.1 vrs_Axl + 0.1 vrs_Fau + 0.2 vrs_Gio - 0.2 vrs_Gol + 0.1 vrs_INo
 - 0.1 vrs_Ky + 0.1 vrs_Leo + 0.1 vrs_May - 0.1 vrs_Ram - 0.2 vrs_Sol
 + 0.3 vrs_Zat - vrs_w >= 0
_C3: vrs_Chp >= 0
_C30: 0.3 vrs_Axl + 0.1 vrs_Chp - 0.1 vrs_Fau + 0.1 vrs_Gio + 0.2 vrs_INo
 + 0.2 vrs_May - 0.1 vrs_Mil + 0.1 vrs_Nag + 0.3 vrs_Pot + 0.1 vrs_Ram - vrs_w
 >= 0
_C31: - 0.1 vrs_Axl + 0.1 vrs_Chp + 0.2 vrs_Gol + 0.1 vrs_Ky + 0.1 vrs_Leo
 + 0.2 vrs_May + 0.3 vrs_Pot - 0.2 vrs_Ram + 0.2 vrs_Sol - vrs_w >= 0
_C32: - 0.1 vrs_Anj + 0.5 vrs_Axl + 0.1 vrs_Chp + 0.1 vrs_Gio + 0.1 vrs_INo
 + 0.1 vrs_Leo - 0.2 vrs_Mil + 0.2 vrs_Nag - 0.1 vrs_Sol + 0.2 vrs_Zat - vrs_w
 >= 0
_C33: 0.2 vrs_Axl + 0.3 vrs_Chp + 0.2 vrs_Gio + 0.2 vrs_INo + 0.1 vrs_Ky
 + 0.3 vrs_May - 0.1 vrs_Nag + 0.1 vrs_Pot + 0.2 vrs_Ram + 0.3 vrs_Sol
 - 0.1 vrs_Zat - vrs_w >= 0
_C34: vrs_Fau = 1
_C4: vrs_Axl >= 0
_C5: vrs_Leo >= 0
_C6: vrs_INo >= 0
_C7: vrs_Pot >= 0
_C8: vrs_Ram >= 0
_C9: vrs_Gio >= 0
Bounds
vrs_Anj free
vrs_Axl free
vrs_Chp free
vrs_Fau free
vrs_Gio free
vrs_Gol free
vrs_INo free
vrs_Ky free
vrs_Leo free
vrs_May free
vrs_Mil free
vrs_Nag free
vrs_Pot free
vrs_Ram free
vrs_Sol free
vrs_Zat free
vrs_w free
End
