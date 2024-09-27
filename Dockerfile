FROM oven/bun:slim AS builder
RUN apt update -y && apt install curl unzip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

FROM oven/bun:slim
COPY --from=builder /usr/local/bin /usr/local/bin
COPY --from=builder /usr/local/aws-cli /usr/local/aws-cli