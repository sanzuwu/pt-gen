FROM node:bookworm-slim
# 创建工作目录 /app
RUN mkdir -p /app
WORKDIR /app
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
# 替换国内debian源
# COPY ./debian.sources /etc/apt/sources.list.d/
COPY ./run /app/run.sh
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo 'Asia/Shanghai' >/etc/timezone && \
    apt  update && apt install -y  git && \
    cd /app && \
    chmod +x run.sh && \
    git clone https://github.com/YunFeng86/pt-gen-universal.git && \
	cd pt-gen-universal && \
    npm install && \
	cp .env.example .env && \
	apt purge -y git && \
	apt-get autoremove -y
EXPOSE 3000	
# EXPOSE 5173
CMD ["bash","run.sh"]
