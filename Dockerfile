FROM erlang:24

COPY rebar.config /rebar3/.config/rebar3/rebar.config
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
