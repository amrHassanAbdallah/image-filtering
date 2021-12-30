docker-build:
	@echo :: generating the images and tagging them
	docker build -t amrhassanabdullah/udagram-api-feed:v1 ./udagram-api-feed
	docker build -t amrhassanabdullah/udagram-api-user:v1 ./udagram-api-user
	docker build -t amrhassanabdullah/udagram-reverseproxy:v1 ./udagram-reverseproxy
	docker build -t amrhassanabdullah/udagram-frontend:v1 ./udagram-frontend
	docker images
	docker push amrhassanabdullah/udagram-api-feed:v1
	docker push amrhassanabdullah/udagram-api-user:v1
	docker push amrhassanabdullah/udagram-reverseproxy:v1
	docker push amrhassanabdullah/udagram-frontend:v1
