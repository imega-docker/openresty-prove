TAG = 0.0.2

build:
	@docker build -t imega/openresty-prove:$(TAG) .

release:
	@docker login --username $(DOCKER_USER) --password $(DOCKER_PASS)
	@docker push imega/openresty-prove:$(TAG)
	@docker push imega/openresty-prove:latest

