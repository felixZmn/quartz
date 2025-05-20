FROM node:24-slim
ARG QUARTZ_VERSION="v4.5.0"

# Set the working directory
WORKDIR /app

RUN apt update && apt install git -y \
    && git clone --depth 1 --branch ${QUARTZ_VERSION} https://github.com/jackyzha0/quartz.git \
    && cd quartz \
    && npm ci
    
WORKDIR /app/quartz
CMD ["npx", "quartz", "build"]
