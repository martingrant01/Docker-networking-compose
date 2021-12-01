FROM alpine

COPY secret.txt /secret.txt

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
