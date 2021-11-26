TAG?=v2

build:
	docker build -t aledbf/kube-tools:$(TAG) . -f Dockerfile

push:
	docker push aledbf/kube-tools:$(TAG)