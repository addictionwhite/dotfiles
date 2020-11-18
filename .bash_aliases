shopt -s expand_aliases
alias ll='ls -l'



function sample(){
    echo "hello"
}


# https://qiita.com/taigamikami/items/d22249c348dd71cb6652
#mduch (){
md (){
    mkdir -p "$(dirname "$1")" && touch  "$1"
    ls "$(dirname "$1")"
}


