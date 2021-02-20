all: mgolf.gbc

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

mgolf.o: src/mgolf.asm src/bank_*.asm
	rgbasm -i src -h -L -o mgolf.o src/mgolf.asm

mgolf.gbc: mgolf.o
	rgblink -n mgolf.sym -m mgolf.map -o $@ $<
	rgbfix -v -p 255 $@

	sha1sum -c mgolf.sha1
clean:
	rm -f mgolf.o mgolf.gbc mgolf.sym mgolf.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +
