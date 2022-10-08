USER?=commonuser
$PWD?=123123123
genpwd:
	@echo -n '$(USER):$(PWD)' | openssl base64
