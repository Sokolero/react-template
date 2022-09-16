all:
	mkdir src/components/${component}
	touch src/components/${component}/index.js
	touch src/components/${component}/${component}UI.js
	touch src/components/${component}/${component}.js
	touch src/components/${component}/${component}.module.scss
	echo "import ${component} from './${component}';\nexport default ${component};" > src/components/${component}/index.js
	echo "import React from 'react';\nimport ${component}UI from './${component}UI';" > src/components/${component}/${component}.js
	echo "import React from 'react';\nimport styles from './${component}.module.scss';" > src/components/${component}/${component}UI.js

install:
	npm ci

start:
	npm start

build:
	npm run build

test:
	npm test

lint:
	npx eslint src/**


.PHONY: test
