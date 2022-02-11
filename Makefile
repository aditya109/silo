SILOVERSION := $(shell git describe --tags)
LDFLAGS := -X "main.BuildTimestamp=$(shell date -u "+%Y-%m-%d %H:%M:%S")"
LDFLAGS := -X "main.airVersion=$(SILOVERSION)"
LDFLAGS := -X "main.goVersion=$(shell go version | sed -r 's/go version go(.*)\ .*/\1/')"

GO := GO111MODULE=on go

# .PHONY: init
# init:
# 	git init
# TODO:
.PHONY: ci
ci: @$(GO) mod tidy && $(GO) mod vendor
# init
	

.PHONY: build
build:
	ci
	$(GO) build -ldflags '$(LDFLAGS)'

.PHONY: install
install:
	ci
	@$(GO) install -ldflags '$(LDFLAGS)'

