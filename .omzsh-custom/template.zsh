TEMPLATES="templates"

template() {
    cp "$HOME/$TEMPLATES/${1}" $2
}

templates() {
    if [ -d "$HOME/$TEMPLATES" ]; then
        ls $HOME/$TEMPLATES
    else
        echo "$TEMPLATES is not exists in $HOME, do you want create it? Y/n"
        read ANSWER
        case ${ANSWER:-y} in
            y)
                mkdir $HOME/$TEMPLATES
                echo "Created '$HOME/$TEMPLATES'"
            ;;
            *)
                echo "Exitting..."
            ;;
        esac
    fi
}

_template() {
    compadd `templates`
}

compdef _template template

