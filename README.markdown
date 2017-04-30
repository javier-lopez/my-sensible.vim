[my-sensible.vim](https://github.com/chilicuil/my-sensible.vim) is a global plugin who set preferences according to they way I use [vim](http://vim.org). It sets highly opinionated settings. Probably not something you would like to use straight ahead. Some of the included features are:

- A single config can be used across Windows, Mac and linux
- Eliminates swap and backup files from littering directories, preferring to store in a central location.
- Improve performance by disabling ancient tty options
- Enhance command completion, syntax highlighting and and search features
- Etc

Requirements
------------

* Vim 7.0+

Installation
------------

- [Vundle](https://github.com/gmarik/vundle) way (recommended), add the following to your $HOME/.vimrc file:

        Bundle 'chilicuil/my-sensible.vim'

    And run inside of vim:

        :BundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/chilicuil/my-sensible.vim.git ~/.vim/bundle/my-sensible.vim

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv my-sensible.vim*.zip $HOME/.vim
        cd $HOME/.vim && unzip my-sensible.vim*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/
