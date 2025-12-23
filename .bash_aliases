# bash_aliases

alias la="ls -la"
alias ll="ls -AF"

# wsl (windows) specific
WIN_HOME="/mnt/c/Users/NilsCarlson"
WIN_ONEDRIVE="$WIN_HOME/OneDrive - The Marketing Advantage"
notes() {
    local client="${1:-}"
    if [ -n "$client" ]; then
        nvim "$WIN_ONEDRIVE/clients/$client/notes.md"
    else
        nvim "$WIN_ONEDRIVE/notes/notes.md"
    fi
}
