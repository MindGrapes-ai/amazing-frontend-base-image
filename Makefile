build:
	time docker build \
		--tag frontend-base-image:latest \
	  	--file Dockerfile ./

.PHONY: build