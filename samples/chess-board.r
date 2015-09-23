REBOL [
	Name: "Chess Board resize test"
	Author: "DocKimbel/Softinnov"
	Date: 08/08/2002
]

do %../auto-resize.r

lay: layout [
	
	label "Red lines show holes after resizing! (should not appear)" 250
	zz: panel red edge [size: 2x2 colors: 0.0.0] resize-all [
		origin 0x0
		space 0x0
		across
		style wb box white 20x20 resize-all
		style bb wb black
		wb bb wb bb wb return
		bb wb bb wb bb return
		wb bb wb bb wb return
		bb wb bb wb bb return
		wb bb wb bb wb return
	]
]

view/options lay 'resize