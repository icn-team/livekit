FROM golang:latest

WORKDIR /root

# Install LiveKit
RUN true \
  && git clone "https://github.com/icn-team/livekit.git" \
  && cd livekit \
  && go build -a -o livekit-server ./cmd/server \
  && cp livekit-server /root/livekit-server

ENTRYPOINT ["/root/livekit-server"]
