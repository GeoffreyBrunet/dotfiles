go-plugin-folder{
    cd ~/.vim/bundle/
}


download-plugins{
    # https://vimawesome.com/plugin/dockerfile-vim
    git clone https://github.com/ekalinin/Dockerfile.vim.git
    # https://vimawesome.com/plugin/vim-flake8
    git clone https://github.com/nvie/vim-flake8
    # https://vimawesome.com/plugin/fugitive-vim
    git clone https://github.com/tpope/vim-fugitive
    # https://vimawesome.com/plugin/vim-go-sparks-fly
    git clone https://github.com/fatih/vim-go
    # https://vimawesome.com/plugin/markdown-syntax
    git clone https://github.com/plasticboy/vim-markdown
    # https://vimawesome.com/plugin/nord-vim
    git clone https://github.com/arcticicestudio/nord-vim
    # https://vimawesome.com/plugin/vim-terraform-state-of-grace
    git clone https://github.com/hashivim/vim-terraform
    # https://vimawesome.com/plugin/vim-yaml
    git clone https://github.com/stephpy/vim-yaml
}

main{
    go-plugin-folder
    download-plugins
}

main