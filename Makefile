USER?=hovanvydut
$PWD?=010520011
genpwd:
	@echo -n '$(USER):$(PWD)' | openssl base64
