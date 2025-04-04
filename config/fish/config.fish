if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

alias ls="exa -al --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias lt="exa -lTa --color=always --group-directories-first"
