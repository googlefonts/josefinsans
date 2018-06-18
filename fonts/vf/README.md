IMPORTANT: 
Thin and ThinItalic instances were converted to masters which then replaced the lightest masters in each file. This was needed in order for fontmake 1.5.2.dev0 to gen the vf fonts.


**Build instructions for each .glyphs files**

```
fontmake -g FontFamily.glyphs -o variable
Rename Roman font to JosefinSans-Roman-VF.ttf
Rename Italic font to JosefinSans-Italic-VF.ttf
gftools fix-vfmeta [vf.ttfs]
```
