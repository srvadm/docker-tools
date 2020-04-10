FROM alpine:3.11
RUN apk add --no-cache imapsync

# always starts imapsync
ENTRYPOINT ["imapsync"]

# by default, print the help.
CMD ["-h"]
