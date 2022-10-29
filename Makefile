# Set the default goal if no targets were specified on the command line
.DEFAULT_GOAL=build

# Makes shell non-interactive and exit on any error
.SHELLFLAGS=-ec

FILES=filters/*.yml
LOCKFILE=mail-filters.yml.lock

define LOCKFILE_HEADER
# This file is auto-generated from the contents of $(FILES)
# Please don't edit this file manually

endef

export LOCKFILE_HEADER

build: $(LOCKFILE)
	gmail-yaml-filters mail-filters.yml.lock > mail-filters.xml

$(LOCKFILE):
	echo "$$LOCKFILE_HEADER" > $(LOCKFILE) 
	cat $(FILES) >> $(LOCKFILE)

.PHONY: build $(LOCKFILE)
