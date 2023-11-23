
build-dev:
		echo "Building dev server..." && \
		docker-compose -f ./build/Docker/local/docker-compose.yml build --no-cache
start-dev:
		echo "Starting dev server..." && \
		docker-compose -f ./build/Docker/local/docker-compose.yml up -d
start-build-dev:
		echo "Building dev server..." && \
		docker-compose -f ./build/Docker/local/docker-compose.yml up -d --build
stop-dev:
		echo "Stoping dev server..." && \
		docker-compose -f ./build/Docker/local/docker-compose.yml down
build-local-dev:
		echo "Building local dev server..." && \
		yarn && \
		yarn build && \
		DB=postgres DB_NAME=backend DB_USERNAME=admin yarn dev-server:start
populate-local-dev:
		echo "Populating local dev server..." && \
		cd packages/dev-server && \
		DB=postgres DB_NAME=backend DB_USERNAME=admin yarn populate && \
		cd ../..
start-local-dev:
		echo "Starting local dev server..." && \
		cd packages/dev-server && \
		DB=postgres DB_NAME=backend DB_USERNAME=admin yarn start && \
		cd ../..

