PLUGIN_ID ?= org.kaakaa.mattermost-plugin-first
PLUGIN_VERSION ?= 0.0.1
BUNDLE_NAME ?= $(PLUGIN_ID)_$(PLUGIN_VERSION).tar.gz

build:
	rm -rf dist/
	mkdir -p dist/$(PLUGIN_ID)
	cp plugin.json dist/$(PLUGIN_ID)/

	cd dist && tar -cvzf $(BUNDLE_NAME) $(PLUGIN_ID)

	@echo plugin built at: dist/$(BUNDLE_NAME)