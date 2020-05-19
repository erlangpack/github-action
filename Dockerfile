FROM erlang:23.0-alpine

COPY rebar.config /root/.config/rebar3/rebar.config
COPY entrypoint.sh /entrypoint.sh

RUN rebar3 update

ENTRYPOINT ["/entrypoint.sh"]
