REPO_NAME:=poridhi
IMAGE_NAME:=todo-backend
VERSION:=v1.1

build:
	@ docker build -t ${REPO_NAME}/${IMAGE_NAME}:${VERSION} .

build-push:
	@ docker build -t ${REPO_NAME}/${IMAGE_NAME}:${VERSION} .
	@ docker push ${REPO_NAME}/${IMAGE_NAME}:${VERSION}