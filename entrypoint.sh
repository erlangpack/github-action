#!/bin/sh -l

# This is necessary because GitHub changes the home dir to /github/home when the action is started; Rebar doesn't seem
# to respect the REBAR_GLOBAL_CONFIG_DIR env var.
ln -s /rebar3/.config ~/.config

rebar3 hex publish -r hexpm --yes
