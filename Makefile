ENV_FILE := .env.default

# Read .env file
include $(ENV_FILE)

.PHONY: setup
setup:
	brew install kubectl kind kubectx

.PHONY: kind-local
kind-local:
	@./cluster_init.sh $(APP_NAME) $(CLUSTER_NAME) $(KIND_CONFIG)
