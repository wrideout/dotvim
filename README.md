# Installation Guide
#### FIRST OF ALL, AND VERY IMPORTANT: 
The installation process will only work **IFF** ~/.vim is empty **AND** ~/.vimrc
does not exist.  If this is not the case, then be sure to back up your existing
Vim configuration files.  This may be done by executing the following:
    
    $ mv ~/.vimrc ~/.vimrc_old
    $ mv ~/.vim ~/.vim_old

Execute the following commands in order to install to your ~/.vim file:

    # Install the git repository
    $ git clone --recursive git://github.com/wrideout/dotvim.git ~/.vim
    
    # Initialize and pull down the requisite submodules
    $ cd ~/.vim
    $ git submodule init
    $ git submodule update

    # Create symlinks
    $ ln -s ~/.vim/vimrc ~/.vimrc

The use of the '--recursive' flag during the cloning process tells git that it
should fetch the submodules needed to run this vim setup.  Once installation is
complete, ~/.vim may be treated as a regular git repository, and therefore
updated as such.  All submodules in the repository may be updated by executing
the following command:

    $ git submodule foreach git pull origin master

# Plugins and Dependencies
The plugins used by this setup are as follows:
   
* [Abolish](https://github.com/tpope/vim-abolish.git)
* [Cscope\_maps](https://github.com/vim-scripts/cscope.vim)
* [DelimitMate](https://github.com/Raimondi/delimitMate.git)
* [Fugitive](https://github.com/tpope/vim-fugitive.git)
* [Genutils (dependency for SelectBuf)](https://github.com/vim-scripts/genutils.git)
* [Matchit](https://github.com/tmhedberg/matchit.git)
* [NERD\_commenter](https://github.com/scrooloose/nerdcommenter.git)
* [NERD\_tree](https://github.com/scrooloose/nerdtree.git)
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Repeat](https://github.com/tpope/vim-repeat.git)
* [Scratch](https://github.com/mtth/scratch.vim.git)
* [SelectBuf](https://github.com/vim-scripts/SelectBuf.git)
* [Supertab](https://github.com/ervandew/supertab.git)
* [Surround](https://github.com/tpope/vim-surround.git)
* [Tabular](https://github.com/godlygeek/tabular.git)
* [Tagbar](https://github.com/vim-scripts/Tagbar.git)
* [Unimpaired](https://github.com/tpope/vim-unimpaired.git)
* [VCSCommand](https://github.com/vim-scripts/vcscommand.vim.git)
* [Vim-Multiple-Cursors](https://github.com/terryma/vim-multiple-cursors.git)

In order for the taglist plugin to work, the exuberant-ctags application must be
installed on the host system.  The cscope application must also be installed, as
the cscope-maps plugin and several mappings rely on it.

# Colorschemes
The following colorschemes are provided:

* [hybrid](https://github.com/w0ng/vim-hybrid.git)
* [hybrid-light](https://github.com/w0ng/vim-hybrid.git)
* [jellybeans](https://github.com/nanotech/jellybeans.vim.git)
* [mustang](https://github.com/croaker/mustang-vim.git)
* [solarized](https://github.com/altercation/vim-colors-solarized.git)
* [buttercream](https:github.com/vim-scripts/buttercream.vim.git)

# Further Customization and Additions
The pathogen system is used to manage the above plugins.  To add a new plugin to
this setup, execute the following command, substituting information where
needed:

    $ git submodule add git://github.com/path/to/plugin/repo bundle/plugin_name

Once that is done, pathogen will automatically crawl, find, and load the plugins
in the directories under `~/.vim/bundle`.  The help documentaion can be
refreshed to reflect any new plugins by running the following command:

    :Helptags

Note that this is a wrapper, supplied by the pathogen plugin.

#WARNING
This particular vimrc contains new mappings for the keyboard arrow keys.  If you
absolutely can't live without arrow keys, just comment the new mappings out in
vimrc.

#Issues and Bugs
Any issues or bugs that are found may be addressed via the Issues page of this
repository, located [here](https://github.com/wrideout/dotvim/issues).

