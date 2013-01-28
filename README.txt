Execute the following commands in order to install to your ~/.vim file:

    # Install the git repository
    $ git clone git://github.com/wrideout/dotvim.git ~/.vim

    # Create symlinks
    $ ln -s ~/.vim/vimrc ~/.vimrc

It should be noted that this process will only work if ~/.vim is empty, and
~/.vimrc does not exist.  If this is not the case, then be sure to back up your
existing Vim configuration files:

    $ mv ~/.vimrc ~/.vimrc_old
    $ mv ~/.vim ~/.vim_old

Once installation is complete, ~/.vim may be treated as a regulat git
repository, and therefore updated as such.

The plugins used by this setup are as follows:
    
    - autoclose.vim
    - bufexplorer.vim
    - cscope_maps.vim
    - supertab.vim
    - repeat.vim
    - surround.vim
    - NERD_tree.vim
    - NERD_commenter.vim
    - taglist.vim
    - TagmaTasks.vim
    - unimpaired.vim
    - matchit.vim

