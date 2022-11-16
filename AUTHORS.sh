#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/.."

{
	cat <<-'EOH'
	# This file lists all individuals having contributed content to the repository.
	EOH
	echo
	git log --format='%aN <%aE>' | sort -uf
} > AUTHORS
