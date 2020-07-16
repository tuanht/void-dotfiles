set --export EDITOR nvim

if status --is-login
    set --export GPG_TTY (tty)
    set --export PINENTRY_USER_DATA USE_TTY=1
end
