
	+' '                : exec chromium
	^' '                : exec chromium in incognito mode
	^'|'                : exec slock
	+xkReturn           : exec st
	^xkReturn           : exec dmenu_run
	+xkAudioLowerVolume : decrease volume using pactl
	+xkAudioRaiseVolume : increase volume using pactl
	+xkAudioMute        : mute audio using pactl
	+xkBackspace        : delete windows
	^xkEscape           : quit taowm
	+'`'                : go to next screen
	^'~'                : go to prev screen
	+xkTab              : go to next frame
	^xkISOLeftTab       : go to prev frame
	+'q'                : list workspaces
	+'w'                : migrate workspace
	+'e'                : doworkspace
	^'E'                : doworkspaceNudge
	+'r'                : doworkspace
	^'R'                : doworkspaceNudge
	+'t'                : create new workspace
	^'T'                : delete workspace
	+'a'                : list windows
	+'s'                : dowindowSelect
	^'S'                : dowindowSelect
	+'d'                : dowindow, prev
	^'D'                : dowindowNudge, prev
	+'f'                : dowindow, next
	^'F'                : dowindowNudge, next
	+'g'                : doFullscreen
	^'G'                : doHide
	+'-'                : doSplit, horizontal
	+'='                : doSplit, vertical
	^'+'                : doMerge
	+'1'                : go to windowN, 0
	+'2'                : go to windowN, 1
	+'3'                : go to windowN, 2
	+'4'                : go to windowN, 3
	+'5'                : go to windowN, 4
	+'6'                : go to windowN, 5
	+'7'                : go to windowN, 6
	+'8'                : go to windowN, 7
	+'9'                : go to windowN, 8
	+'0'                : go to windowN, 9
	+F1                 : go to workspaceN 0
	+F2                 : go to workspaceN 1
	+F3                 : go to workspaceN 2
	+F4                 : go to workspaceN 3
	+F5                 : go to workspaceN 4
	+F6                 : go to workspaceN 5
	+F7                 : go to workspaceN 6
	+F8                 : go to workspaceN 7
	+F9                 : go to workspaceN 8
	+F10                : go to workspaceN 9
	+F11                : go to workspaceN 1
	+F12                : go to workspaceN 1

	+'i': {doSynthetic, xp.Button(4)},
	^'I': {doSynthetic, xp.Button(4)},
	+'m': {doSynthetic, xp.Button(5)},
	^'M': {doSynthetic, xp.Button(5)},
	+'y': {doSynthetic, xp.Keysym(xkHome)},
	^'Y': {doSynthetic, xp.Keysym(xkHome)},
	+'u': {doSynthetic, xp.Keysym(xkPageUp)},
	^'U': {doSynthetic, xp.Keysym(xkPageUp)},
	+'h': {doSynthetic, xp.Keysym(xkLeft)},
	^'H': {doSynthetic, xp.Keysym(xkLeft)},
	+'j': {doSynthetic, xp.Keysym(xkDown)},
	^'J': {doSynthetic, xp.Keysym(xkDown)},
	+'k': {doSynthetic, xp.Keysym(xkUp)},
	^'K': {doSynthetic, xp.Keysym(xkUp)},
	+'l': {doSynthetic, xp.Keysym(xkRight)},
	^'L': {doSynthetic, xp.Keysym(xkRight)},
	+'b': {doSynthetic, xp.Keysym(xkEnd)},
	^'B': {doSynthetic, xp.Keysym(xkEnd)},
	+'n': {doSynthetic, xp.Keysym(xkPageDown)},
	^'N': {doSynthetic, xp.Keysym(xkPageDown)},
	+',': {doSynthetic, xp.Keysym(xkBackspace)},
	^'<': {doSynthetic, xp.Keysym(xkBackspace)},
	+'.': {doSynthetic, xp.Keysym(xkDelete)},
	^'>': {doSynthetic, xp.Keysym(xkDelete)},
	+'/': {doProgramAction, paTabNew},
	^'?': {doProgramAction, paTabClose},
	+'c': {doProgramAction, paTabPrev},
	+'v': {doProgramAction, paTabNext},
	+'o': {doProgramAction, paCopy},
	^'O': {doProgramAction, paCut},
	+'p': {doProgramAction, paPaste},
	^'P': {doProgramAction, paPasteSpecial},
	+'z': {doProgramAction, paZoomIn},
	^'Z': {doProgramAction, paZoomReset},
	+'x': {doProgramAction, paZoomOut},
		paZoomIn:       {xp.ModMaskControl | xp.ModMaskShift, '+'},
		paZoomIn:       {xp.ModMaskControl | xp.ModMaskShift, '+'},
