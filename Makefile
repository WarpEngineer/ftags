all: ftags.7.gz

# Where to install
INSTDIR = /usr/local/bin
MANDIR = /usr/share/man/man7

ftags.7.gz: ftags.7.man
	gzip -c ftags.7.man > ftags.7.gz

ftags.7.man: ftags.7.md
	pandoc -s -V title=ftags -V section=7 -V date=$(date) -V footer=https://github.com/WarpEngineer -V header=ftags -o ftags.7.man -t man ftags.7.md 

man: ftags.7.gz

clean:
	-rm -f ftags.7.man
	-rm -f ftags.7.gz

install: 

uninstall:
