update-pathogen{
    git pull ~/.vim/pathogen
}

update-pathogen-plugins{
    cd ~/.vim/bundle/
    git pull 
}

main{
    update-pathogen
}

main