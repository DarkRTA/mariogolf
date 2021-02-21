all: mgolf.gbc


OBJS := obj/mgolf.o obj/wram.o
ASM_FILES := $(shell find src/ -type f -name "*.asm")

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

obj/%.o: src/%.asm $(ASM_FILES)
	mkdir -p $(@D)
	rgbasm -i src -h -L -o $@ $<



mgolf.gbc: $(OBJS)
	rgblink -n mgolf.sym -m mgolf.map -o $@ $(OBJS)
	rgbfix -v -p 255 $@

	sha1sum -c mgolf.sha1
clean:
	rm -rf mgolf.o mgolf.gbc mgolf.sym mgolf.map obj
