#!/bin/bash

# Launcher for T3 Code (official binary)
# User flags: ~/.config/t3code-flags.conf (one flag per line, # for comments)

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

T3CODE_USER_FLAGS=""
if [[ -f "${XDG_CONFIG_HOME}/t3code-flags.conf" ]]; then
    T3CODE_USER_FLAGS="$(sed 's/#.*//' "${XDG_CONFIG_HOME}/t3code-flags.conf" | tr '\n' ' ')"
fi

exec /opt/t3code-bin/t3-code-desktop "$@" ${T3CODE_USER_FLAGS}
