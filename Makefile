##
# TERRAFORM INSTALL
##
version ?= "0.11.11"
os      ?= $(shell uname|tr A-Z a-z)
arch    ?= "amd64"



.PHONY: install
install:
	@wget -O /usr/local/bin/terraform.zip https://releases.hashicorp.com/terraform/$(version)/terraform_$(version)_$(os)_$(arch).zip
	@unzip -d /usr/local/bin /usr/local/bin/terraform.zip && rm /usr/local/bin/terraform.zip
