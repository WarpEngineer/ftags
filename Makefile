.PHONY: all
all: ; @echo make what? man? install?

# Where to install
INSTDIR = /usr/local/bin
MANDIR = /usr/share/man/man7

man: ftags.7.gz

install: ftags.7.gz
	install ftags $(INSTDIR)
	install ftags.7.gz $(MANDIR)

uninstall:
	rm $(INSTDIR)/ftags
	rm $(MANDIR)/ftags.7.gz

ftags.7.gz: ftags.7.man
	gzip -c ftags.7.man > ftags.7.gz

ftags.7.man: ftags.7.md
	# can also possibly use help2man
	pandoc -s -V title=ftags -V section=7 -V date=$(date) -V footer=https://github.com/WarpEngineer -V header=ftags -o ftags.7.man -t man ftags.7.md 


clean:
	-rm -f ftags.7.man
	-rm -f ftags.7.gz

