REBOL [
	Name: "Cyphre's script for resize testing"
	Author: "DocKimbel/Softinnov"
	Date: 08/08/2002
]

do %../auto-resize.r

lay: layout [
	size 380x230
	style lbox box white 112x50 edge [size: 1x1] resize-all
 	backdrop effect [gradient 0x0 0.0.0 255.255.255] resize-all alone
	across
	origin 10x10
	vtext "To: ICQ#"
	field 35
	vtext "Nick:"
	field 50 resize-h
	vtext "EMail:"
	field 100 resize-h
	return
	area 350x100 resize-all
	return
	lbox
	lbox
	lbox
]

view/options lay [resize min-size 380x230]