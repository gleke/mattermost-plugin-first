PLUGIN_ID ?= org.kaakaa.mattermost-plugin-first
PLUGIN_VERSION ?= 0.0.3
BUNDLE_NAME ?= $(PLUGIN_ID)_$(PLUGIN_VERSION).tar.gz

build:
	mkdir -p server/dist
	cd server && env GOOS=linux GOARCH=amd64 GO build -o dist/plugin-linux-amd64
	cd server && env GOOS=darwin GOARCH=amd64 GO build -o dist/plugin-darwin-amd64
	cd server && env GOOS=windows GOARCH=amd64 GO build -o dist/plugin-windows-amd64.exe

	cd webapp && npm run build;

	rm -rf dist/
	mkdir -p dist/$(PLUGIN_ID)
	cp plugin.json dist/$(PLUGIN_ID)/

	mkdir -p dist/$(PLUGIN_ID)/server/dist
	cp -r server/dist/* dist/$(PLUGIN_ID)/server/dist
	mkdir -p dist/$(PLUGIN_ID)/webapp/dist;
	cp -r webapp/dist/* dist/$(PLUGIN_ID)/webapp/dist/;

	cd dist && tar -cvzf $(BUNDLE_NAME) $(PLUGIN_ID)

	@echo plugin built at: dist/$(BUNDLE_NAME)