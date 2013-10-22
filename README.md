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
complete, ~/.vim may be treated as a regulat git repository, and therefore
updated as such.  All submodules in the repository may be updated by executing
the following command:

    $ git submodule foreach git pull origin master

# Plugins and Dependencies
The plugins used by this setup are as follows:
    
* cscope\_maps.vim
* delimitMate.vim
* genutils.vim (dependency for SelectBuf.vim)
* matchit.vim
* NERD\_commenter.vim
* NERD\_tree.vim
* pathogen.vim
* repeat.vim
* SelectBuf.vim
* supertab.vim
* surround.vim
* Tagbar.vim
* unimpaired.vim
* VCSCommand.vim

In order for the taglist plugin to work, the exuberant-ctags application must be
installed on the host system.  The cscope application must also be installed, as
the cscope-maps plugin and several mappings rely on it.

<!-- # Custom Commands and Keyboard Combinations

TODO: this is where a list of all custom commands and keyboard combinations will
be maintained.  The format will be thus:

Command | Short Description
------- | -----------------
foo     | bar

Keyboard Combination | Short Description
-------------------- | -----------------
foo                  | bar 
-->

# Colorschemes
The following colorschemes are provided:

* jellybeans.vim
* solarized.vim

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

#Issues and Bugs
Any issues or bugs that are found may be addressed via the Issues page of this
repository, located [here](https://github.com/wrideout/dotvim/issues).

