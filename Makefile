ELPA_DEPENDENCIES=package-lint

ELPA_ARCHIVES=melpa

LINT_CHECKDOC_FILES=$(wildcard *.el) $(wildcard test/*.el)
LINT_PACKAGE_LINT_FILES=$(wildcard *.el) $(wildcard test/*.el)
LINT_COMPILE_FILES=$(wildcard *.el) $(wildcard test/*.el)

makel.mk:
	# Download makel
	@if [ -f ../makel/makel.mk ]; then \
		ln -s ../makel/makel.mk .; \
	else \
		curl \
		--fail --silent --show-error --insecure --location \
		--retry 9 --retry-delay 9 \
		-O https://gitlab.petton.fr/DamienCassou/makel/raw/v0.2.0/makel.mk; \
	fi

# Include emake.mk if present
-include makel.mk
