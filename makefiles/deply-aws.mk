.PHONY: deploy.aws resources

ENV            ?= dev
DEPLOY_DIR      = deploy
BUILD_DIR       = build
DEPLOY_REGION  ?= eu-west-1
DEPLOY_BUCKET   = $(ENV)-orbis-training

define get_user_name
	$(eval GIT_REPOSITORY_REMOTE := $(shell git remote -v | grep origin | grep '(push)'| awk '{print $2}'))
	$(eval GIT_REPOSITORY_REMOTE_SSH := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | grep 'git@'))

	$(ifeq ($(strip $(GIT_REPOSITORY_REMOTE_SSH)),), \
		$(eval GIT_USER_NAME := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | cut -d "/" -f 1 | cut -d ":" -f 2)), \
		$(eval GIT_USER_NAME := $(shell echo '$(GIT_REPOSITORY_REMOTE)' | cut -d "/" -f 4)) \
	)
endef

deploy.aws: ## Desplegando bucket.: make deploy.aws
	@echo "Desplegando cambios al bucket: $(DEPLOY_BUCKET)"