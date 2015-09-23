# Auto-resizing extension for Rebol2 VID dialect

This VID extension provides auto-resizing capabilities to Rebol2 GUI system. It uses a weighted algorithm for deciding how to move/resize every GUI component. Usage is kept as simple as possible in the spirit of Rebol philosophy.

In order to use it, just load it at the beginning of your script:
```
    do %auto-resize.r
```

Then, just add one of the following keyword after the components which you want to auto-resize:
```
	resize-h	Resize component horizontally only.
	resize-v	Resize component vertically only.
	resize-all	Resize component in both directions.
	alone		Resize a face on its own layer without interfering with others faces.
```
The `alone` keyword main purpose is to handle proper resizing of faces used as background (see `%sample/from-cyphre-test.r`).

The resizing properties are inherited when derivating new styles.

Additionally, it is possible to specify a minimum size for the root window using `min-size` option:
```
    view/options <layout> [resize min-size 180x214]
```

That's all. With that you can cover most of the use-cases with minimal effort.

_Tip_: for cases where the layout is unbalanced, in order to "push" some parts of your layout you can place invisible faces in your layout (using the provided `blank-face` style for example) and make them resizable.


