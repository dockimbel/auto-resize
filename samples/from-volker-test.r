REBOL [
	Name: "Volker's script for resize testing"
	Author: "DocKimbel/Softinnov"
	Date: 08/08/2002
]

do %../auto-resize.r

lay: layout [
	across
	button "save&close" 
	rot: rotary data ["first" "second"]
	rot2: rotary data ["a" "b"]
	rot3: rotary data ["a" "b"]
	return
	ta: area 400x300 mold system/script/header resize-all
	sl: scroller 16x300 resize-v user-data ta [
		scroll-para face/user-data face
	]
	return
	area 196x50 "empty"	resize-all
	area 196x50 "empty too" resize-all
	sensor 20x50 resize-v		; invisible face added to "balance" the layout, so the 
	do [						; resize works exactly as expected. (you can test without it...)
		sl/data: 0
		scroll-para ta sl
	]
]

view/options lay 'resize ; min-size 476x457