FROM debian:buster

RUN	set -eux; \
	apt-get update && apt-get install -y \
	git \
	tree \
	vim \
	python3 \
	python3-pip \
	&& apt-get  clean

#jupyter-lab --allow-root --ip=0.0.0.0 --port=8888 --no-browser --NotebookApp.token=''