JS := $(wildcard *.js)
CSS := $(wildcard *.css)

server: node_modules
	@./node_modules/.bin/roo

build: $(JS) $(CSS)
	@NODE_ENV=production ./node_modules/.bin/duo-bundle $(JS) $(CSS)

production: build
	@rm -rf build/assets
	@cp -R  assets build/
	@NODE_ENV=production ./node_modules/.bin/roo --static build

node_modules: package.json
	@npm install
	@touch node_modules
