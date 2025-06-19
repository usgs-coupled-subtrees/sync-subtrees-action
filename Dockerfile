FROM buildpack-deps:bionic-scm

# Install dependencies
RUN apt-get update && apt-get install -y curl gettext jq unzip \
 && curl -fsSL https://github.com/cli/cli/releases/download/v2.74.0/gh_2.74.0_linux_amd64.tar.gz | tar -xz \
 && cp gh_*/bin/gh /usr/local/bin \
 && rm -rf gh_*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
