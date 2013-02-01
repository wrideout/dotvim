# Installation Guide
Execute the following commands in order to install to your ~/.vim file:

    # Install the git repository
    $ git clone --recursive git://github.com/wrideout/dotvim.git ~/.vim

    # Create symlinks
    $ ln -s ~/.vim/vimrc ~/.vimrc

The use of the '--recursive' flag during the cloning process tells git that it
should fetch the submodules needed to run this vim setup.  It should be noted 
that this process will only work if ~/.vim is empty, and ~/.vimrc does not 
exist.  If this is not the case, then be sure to back up your existing Vim 
configuration files:

    $ mv ~/.vimrc ~/.vimrc_old
    $ mv ~/.vim ~/.vim_old

Once installation is complete, ~/.vim may be treated as a regulat git
repository, and therefore updated as such.

# Plugins and Dependencies
The plugins used by this setup are as follows:
    
* autoclose.vim
* cscope_maps.vim
* genutils.vim (dependency for SelectBuf.vim)
* matchit.vim
* NERD_commenter.vim
* NERD_tree.vim
* pathogen.vim
* repeat.vim
* SelectBuf.vim
* supertab.vim
* surround.vim
* Tagbar.vim
* TagmaTasks.vim
* unimpaired.vim

In order for the taglist plugin to work, the exuberant-ctags application must be
installed on the host system.

The pathogen system is used to manage the above plugins.  To add a new plugin to
this setup, execute the following command, substituting information where
needed:

    $ git submodule add git://github.com/path/to/plugin/repo bundle/plugin_name

Once that is done, pathogen will automatically crawl, find, and load the plugins
in the directories under `~/.vim/bundle`.  The help documentaion can be
refreshed to reflect any new plugins by running the following command:

    :Helptags

Note that this is a wrapper, supplied by the pathogen plugin.

