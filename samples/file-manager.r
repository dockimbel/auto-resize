REBOL [
	Name: "File Manager resize test"
	Author: "DocKimbel/Softinnov"
	Date: 08/08/2002
]

do %../auto-resize.r

lay: layout [
	size 490x500
	across
	field 184 				resize-h
	pad 15 button "<>" 35
	pad 2 field 184 		resize-h
	return 
	box white 200x400 edge [size: 1x1] 			resize-all
	pad 10 scroller 16x400 			 			resize-v
	pad 10 box white 200x400 edge [size: 1x1] 	resize-all
]

view/options lay [resize min-size 180x214]