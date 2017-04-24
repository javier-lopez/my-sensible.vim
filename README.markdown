[my-vim-sensible](https://github.com/chilicuil/my-vim-sensible) is a global plugin who set preferences according to they way I use [vim](http://vim.org). It sets highly opinionated settings. Probably not something you would like to use straight ahead. Some of the included features are:

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

        Bundle 'chilicuil/my-vim-sensible'

    And run inside of vim:

        :BundleInstall

- [Pathogen](https://github.com/tpope/vim-pathogen) way:

        $ git clone https://github.com/chilicuil/my-vim-sensible.git ~/.vim/bundle/my-vim-sensible

- **Manual** (simplest if you've never heard of vundle or pathogen), download the zip file generated from github and extract it to $HOME/.vim

        mv my-vim-sensible*.zip $HOME/.vim
        cd $HOME/.vim && unzip my-vim-sensible*.zip

    Update the help tags from vim:

        :helpt ~/.vim/doc/
