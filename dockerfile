FROM alpine:3.16.2
USER root
WORKDIR /root/ansible
RUN apk add --update --no-cache ansible=5.8.0-r0 openssh-client sshpass
COPY . .
RUN chmod +x ansible-test.sh
RUN chmod +x setup.sh
ENTRYPOINT [ "./setup.sh" ]