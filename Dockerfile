FROM erlang:23.0-alpine

ADD rebar.config /root/.config/rebar3/rebar.config

RUN rebar3 update
