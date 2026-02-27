# Variables for system configuration

SYSTEM_NAME = n8n_agent_image

# Define list commands target
all: help
.PHONY: help
.PHONY: docker_n8n_run docker_n8n_stop

# Define commands
docker_n8n_run: ## Run the n8n agent image in a Docker container
	docker compose -p $(SYSTEM_NAME) up -d

docker_n8n_stop: ## Stop the n8n agent container
	docker compose -p $(SYSTEM_NAME) down

help: ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'