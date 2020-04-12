install-Homebrew{
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Homebrew est installé."
}

install-packages{
    cd ./Homebrew/ && brew bundle
    cd ..
    echo "Les paquets sont installés."
}

install-Zsh-Antigen{
    curl -L git.io/antigen > antigen.zsh
    echo "Antigen est installé."
}

replace-zshrc{
    rm ~/.zshrc && cp ./Zsh/zshrc ~/.zshrc
    echo "Le nouveau .zshrc est opérationnel."
}

set-vim-structure{
    mkdir -p ~/.vim/{autoload,colors,syntax,plugin,spell,config}
    rm ~/.vimrc && cp ./Vim/.vimrc ~/.vim/vimrc
    ln -s ~/.vim/vimrc ~/.vimrc
    echo "L'architecture de Vim est prête."
}

install-Vim-Pathogen{
    git clone https://github.com/tpope/vim-pathogen.git pathogen ~/.vim
    cd ~/.vim/autoload &&&ln -s ../pathogen/autoload/pathogen.vim .
    cd ~/Users/geoffreybrunet/Documents/Dotfiles
    echo "Pathogen est installé."
}

install-plugins-with-Pathogen{
    sh ./Vim/pathogen-plugins.sh
}

main{
    install-Homebrew
    install-packages
    install-Zsh-Antigen
    replace-zshrc
    set-vim-structure
    install-Vim-Pathogen
    install-plugins-with-Pathogen
}

main