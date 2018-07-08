COMM	= cpp
DEST	= /usr/local/bin
FILE	= mofucut
LANG	= nim

$(FILE)	: $(FILE).$(LANG)
	$(LANG) $(COMM) $(FILE).$(LANG)

clean	:; rm $(FILE)

install	: $(FILE)
	install -s $(FILE) $(DEST)
