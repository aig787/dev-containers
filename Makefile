define build_container
	cd $1 && docker build . -t dev-containers:$1
endef

all: base rust

.PHONY: base
base:
	$(call build_container,base)

.PHONY: rust
rust:
	$(call build_container,rust)