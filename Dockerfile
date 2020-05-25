FROM erlang:23.0-alpine

RUN apk add --no-cache git

COPY rebar.config /rebar3/.config/rebar3/rebar.config
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
