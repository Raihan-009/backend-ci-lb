REPO_NAME:=poridhi
IMAGE_NAME:=todo-backend
VERSION:=2.1

.PHONY: check-docker build build-push

check-docker:
	@if ! docker info > /dev/null 2>&1; then \
		echo "Error: Docker is not running or not accessible"; \
		exit 1; \
	fi

build: check-docker
	@echo "Building Docker image..."
	@docker build -t ${REPO_NAME}/${IMAGE_NAME}:${VERSION} .

build-push: check-docker
	@echo "Building Docker image..."
	@docker build -t ${REPO_NAME}/${IMAGE_NAME}:${VERSION} .
	@echo "Pushing Docker image..."
	@docker push ${REPO_NAME}/${IMAGE_NAME}:${VERSION}