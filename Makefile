# The GPLv2 License
#
#   Copyright (C) 2020  Peter Kenji Yamanaka
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

NAME?=update-hosts
PREFIX?=/usr/local
MAKEFLAGS:= $(MAKEFLAGS) --no-print-directory

SCRIPT_INSTALL_SRC="update-hosts"
DOC_INSTALL_SRC="README.md"
LICENSE_INSTALL_SRC="LICENSE"

SCRIPT_INSTALL_TARGET="$(DESTDIR)/$(PREFIX)/bin/$(NAME)"
DOC_INSTALL_TARGET="$(DESTDIR)/$(PREFIX)/share/doc/$(NAME)/README.md"
LICENSE_INSTALL_TARGET="$(DESTDIR)/$(PREFIX)/share/doc/$(NAME)/LICENSE"

.PHONY: all install uninstall install-script install-doc install-license uninstall-script uninstall-doc uninstall-license

all:
	@echo "Targets"
	@echo " install uninstall"
	@echo $(TARGET)

install-script:
	@echo "  INSTALL  $(SCRIPT_INSTALL_TARGET)"
	@mkdir -p "$(shell dirname $(SCRIPT_INSTALL_TARGET))"
	@install -Dm 755 "$(SCRIPT_INSTALL_SRC)" "$(SCRIPT_INSTALL_TARGET)"

install-doc:
	@echo "  INSTALL  $(DOC_INSTALL_TARGET)"
	@mkdir -p "$(shell dirname $(DOC_INSTALL_TARGET))"
	@install -Dm 644 "$(DOC_INSTALL_SRC)" "$(DOC_INSTALL_TARGET)"

install-license:
	@echo "  INSTALL  $(LICENSE_INSTALL_TARGET)"
	@mkdir -p "$(shell dirname $(LICENSE_INSTALL_TARGET))"
	@install -Dm 644 "$(LICENSE_INSTALL_SRC)" "$(LICENSE_INSTALL_TARGET)"

install:
	@echo "Installing..."
	@$(MAKE) install-script
	@$(MAKE) install-doc
	@$(MAKE) install-license

uninstall-script:
	@echo "  UNINSTALL  $(SCRIPT_INSTALL_TARGET)"
	@rm -f "$(SCRIPT_INSTALL_TARGET)"
	@rmdir --ignore-fail-on-non-empty "$(shell dirname $(SCRIPT_INSTALL_TARGET))"

uninstall-doc:
	@echo "  UNINSTALL  $(DOC_INSTALL_TARGET)"
	@rm -f "$(DOC_INSTALL_TARGET)"
	@rmdir --ignore-fail-on-non-empty "$(shell dirname $(DOC_INSTALL_TARGET))"

uninstall-license:
	@echo "  UNINSTALL  $(LICENSE_INSTALL_TARGET)"
	@rm -f "$(LICENSE_INSTALL_TARGET)"
	@rmdir --ignore-fail-on-non-empty "$(shell dirname $(LICENSE_INSTALL_TARGET))"

uninstall:
	@echo "Uninstalling..."
	@$(MAKE) uninstall-script
	@$(MAKE) uninstall-doc
	@$(MAKE) uninstall-license
