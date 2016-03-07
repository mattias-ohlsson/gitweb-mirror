NAME = gitweb-mirror
VERSION = 1

default:

install:
	install -D -m 755 gitweb-mirror \
	 $(DESTDIR)/usr/bin/gitweb-mirror

archive:
	@git archive --prefix=$(NAME)-$(VERSION)/ HEAD --format=tar.gz \
	 -o $(NAME)-$(VERSION).tar.gz
	@echo "$(NAME)-$(VERSION).tar.gz created"

clean:
	rm -f *~ *tar.gz
