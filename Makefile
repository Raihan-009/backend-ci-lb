repo_name:=poridhi
image_name:=cicd-backend
tag:=v2.1

build-push:
	@ docker build -t ${repo_name}/${image_name}:${tag} .
	@ docker push ${repo_name}/${image_name}:${tag}
