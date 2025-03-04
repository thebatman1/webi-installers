#!/bin/bash
set -e
set -u

function __install_ssh_pubkey() {
    my_cmd="ssh-pubkey"

    rm -f "$HOME/.local/bin/${my_cmd}"

    webi_download \
        "$WEBI_HOST/packages/${my_cmd}/${my_cmd}.sh" \
        "$HOME/.local/bin/${my_cmd}"

    chmod a+x "$HOME/.local/bin/${my_cmd}"

    # run the command
    "$HOME/.local/bin/${my_cmd}"
}

__install_ssh_pubkey
