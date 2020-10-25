FROM tsl0922/ttyd
ENV DEBIAN_FRONTEND=noninteractive
ENV USER=root

RUN apt-get update; apt-get install -y --no-install-recommends \
	python3 \
	python3-setuptools \
	python3-pip \
	openssh-server \
	zip \
	unzip \
	p7zip-full \
	wget \
	nano \
	detox \
	tmux \
        curl \
        htop \
	vnstat \
	file \
	systemd \
	docker.io \
        net-tools \
	git \
        && apt-get autoclean \
        && apt-get autoremove \
        && pip3 install gdown \
        && rm -rf /var/lib/apt/lists/*
	
    
ADD ./mc /app/mc
RUN chmod +x /app/mc && mv /app/mc /usr/local/bin/
ENV LOGIN_USER admin
ENV LOGIN_PASSWORD admin

#EXPOSE 7681

ENTRYPOINT ["/sbin/tini", "--"]
#CMD ["ttyd", "bash"]
CMD ttyd --credential $LOGIN_USER:$LOGIN_PASSWORD bash
