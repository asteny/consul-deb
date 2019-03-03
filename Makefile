NAME = consul
VERSION = 1.4.1
ITERATION = 0
UID ?= 0

all: build

build: download
	chmod -Rv 644 build/contrib/
	fpm -s dir -f -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		--iteration $(ITERATION) \
		--after-install build/contrib/$(NAME).postinstall \
		--after-remove build/contrib/$(NAME).postrm \
		-p build/packages \
		$(NAME)=/usr/bin/$(NAME) \
		build/contrib/$(NAME).service=/lib/systemd/system/$(NAME).service \
		build/contrib/$(NAME).logrotate=/etc/logrotate.d/$(NAME) \
		build/contrib/$(NAME).preset=/usr/lib/systemd/system-preset/$(NAME).preset \
		build/contrib/$(NAME).defaults=/etc/default/$(NAME)

download:
	curl -o $(NAME).zip https://releases.hashicorp.com/$(NAME)/$(VERSION)/$(NAME)_$(VERSION)_linux_amd64.zip
	unzip -x $(NAME).zip
