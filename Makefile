VERSION := 17.1
RELEASE := Dağıtımı

all: build

build:
	sed -e "s|@@VERSION@@|$(VERSION)|g" -e "s|@@RELEASE@@|$(RELEASE)|g" files/desktop-version.in > files/desktop-version

install:
	mkdir -p ${DESTDIR}/etc
	install -Dm644 files/desktop-version ${DESTDIR}/usr/lib/deepin/desktop-version
	install -Dm644 files/desktop.jpg     ${DESTDIR}/usr/share/backgrounds/default_background.jpg

clean:
	rm -f files/desktop-version
