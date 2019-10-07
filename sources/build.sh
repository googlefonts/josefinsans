#!/bin/sh
set -e


echo "Generating Static fonts"
mkdir -p ../fonts
fontmake -m JosefinSans.designspace -i -o ttf --output-dir ../fonts/ttf/
fontmake -m JosefinSans.designspace -i -o otf --output-dir ../fonts/otf/
fontmake -m JosefinSans-Italic.designspace -o ttf --output-dir ../fonts/ttf/
fontmake -m JosefinSans-Italic.designspace -o otf --output-dir ../fonts/ttf/

echo "Generating VFs"
fontmake -m JosefinSans.designspace -o variable --output-path ../fonts/ttf/JosefinSans-Roman[wght].ttf
fontmake -m JosefinSans-Italic.designspace -o variable --output-path ../fonts/ttf/JosefinSans-Italic[wght].ttf

rm -rf master_ufo/ instance_ufo/


echo "Post processing"
ttfs=$(ls ../fonts/ttf/*.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	ttfautohint $ttf "$ttf.fix";
	mv "$ttf.fix" $ttf;
done

echo "Post processing VFs"
vfs=$(ls ../fonts/ttf/*-VF.ttf)
for vf in $vfs
do
	gftools fix-dsig -f $vf;
	ttfautohint-vf --stem-width-mode nnn $vf "$vf.fix";
	mv "$vf.fix" $vf;
done


echo "Fixing VF Meta"
gftools fix-vf-meta $vfs;
for vf in $vfs
do
	mv "$vf.fix" $vf;
	ttx -f -x "MVAR" $vf; # Drop MVAR. Table has issue in DW
	rtrip=$(basename -s .ttf $vf)
	new_file=../fonts/ttf/$rtrip.ttx;
	rm $vf;
	ttx $new_file
	rm $new_file
done