REPO_NAME:=poridhi
IMAGE_NAME:=cicd-backend
VERSION:=v2.1

build-push:
	@ docker build -t ${REPO_NAME}/${IMAGE_NAME}:${VERSION} .
	@ docker push ${REPO_NAME}/${IMAGE_NAME}:${VERSION}