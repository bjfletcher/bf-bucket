# Setup environment variables
sinclude .env
export $(shell [ -f .env ] && sed 's/=.*//' .env)

# ./node_modules/.bin on the PATH
export PATH := ./node_modules/.bin:$(PATH)

deploy:
	@serverless deploy --verbose --region eu-west-1 --stage prod

test:
	@echo "no test"