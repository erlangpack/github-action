#!/bin/sh -l

env HEX_API_KEY=$INPUT_HEX_API_KEY rebar3 hex publish -r hexpm --yes
