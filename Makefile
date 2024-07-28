SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

CLUSTER_NAME = gitops-fleet

.PHONY: all
all:

.PHONY: cluster-create
cluster-create:
	kind create cluster --name=${CLUSTER_NAME}

.PHONY: kind-create
cluster-delete:
	kind delete cluster --name=${CLUSTER_NAME}

.PHONY: install-toolchain
install-toolchain:
	brew install fluxcd/tap/flux
	brew install helm
	brew install kind
