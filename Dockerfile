FROM erlang:24.0-alpine

# These dependencies are required for `rebar3 edoc` (see entrypoint.sh), which compiles the source.
RUN apk add --no-cache bsd-compat-headers gcc git libc-dev make

COPY rebar.config /rebar3/.config/rebar3/rebar.config
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
