server: node_modules
	@./node_modules/.bin/roo

production:
	@cp -R assets build/
	@NODE_ENV=production ./node_modules/.bin/roo --static build

node_modules: package.json
	@npm install
	@touch node_modules
