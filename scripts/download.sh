#!/bin/bash

function color_echo() {
    echo -e "\e[1;33m$@\e[0m"
}

bundle_path=~/.vim/bundle
mkdir -p $bundle_path
cd $bundle_path

if [ ! -d "markdown.git" ]; then
    color_echo "Downloading markdown"
    git clone --depth 1 https://github.com/plasticboy/vim-markdown.git markdown.git
fi

if [ ! -d "protobuf.svn" ]; then
    color_echo "Downloading protobuf"
    svn checkout https://protobuf.googlecode.com/svn/trunk/editors/ protobuf.svn
fi

if [ ! -d "vimcdoc.svn" ]; then
    color_echo "Downloading vimcdoc"
    svn checkout https://vimcdoc.svn.sourceforge.net/svnroot/vimcdoc/trunk/ vimcdoc.svn
fi

if [ ! -d "indent-object.git" ]; then
    color_echo "Downloading indent-object"
    git clone --depth 1 https://github.com/michaeljsmith/vim-indent-object.git indent-object.git
fi

if [ ! -d "ipython.git" ]; then
    color_echo "Downloading ipython"
    git clone --depth 1 https://github.com/ivanov/vim-ipython.git ipython.git
fi

if [ ! -d "pyref.git" ]; then
    color_echo "Downloading pyref"
    git clone --depth 1 https://github.com/xolox/vim-pyref.git pyref.git
fi

if [ ! -d "xterm-color-table.git" ]; then
    color_echo "Downloading xterm-color-table"
    git clone --depth 1 https://github.com/guns/xterm-color-table.vim.git xterm-color-table.git
fi

if [ ! -d "dosini.hg" ]; then
    color_echo "Downloading dosini"
    hg clone -r -1 https://bitbucket.org/xuhdev/syntax-dosini.vim dosini.hg
fi

if [ ! -d "matchtag.git" ]; then
    color_echo "Downloading matchtag"
    git clone --depth 1 https://github.com/gregsexton/MatchTag.git matchtag.git
fi

if [ ! -d "pyflakes.git" ]; then
    color_echo "Downloading pyflakes"
    git clone --depth 1 https://github.com/kevinw/pyflakes-vim.git pyflakes.git
fi

if [ ! -d "renamer.git" ]; then
    color_echo "Downloading renamer"
    git clone --depth 1 https://github.com/vim-scripts/renamer.vim.git renamer.git
fi

if [ ! -d "zencoding.git" ]; then
    color_echo "Downloading zencoding"
    git clone --depth 1 https://github.com/mattn/zencoding-vim.git zencoding.git
fi

if [ ! -d "rails.git" ]; then
    color_echo "Downloading rails"
    git clone --depth 1 https://github.com/tpope/vim-rails.git rails.git
fi

if [ ! -d "voom.git" ]; then
    color_echo "Downloading voom"
    git clone --depth 1 https://github.com/vim-scripts/VOoM.git voom.git
fi

if [ ! -d "nerdcommenter.git" ]; then
    color_echo "Downloading nerdcommenter"
    git clone --depth 1 https://github.com/scrooloose/nerdcommenter.git nerdcommenter.git
fi

if [ ! -d "nerdtree.git" ]; then
    color_echo "Downloading nerdtree"
    git clone --depth 1 https://github.com/scrooloose/nerdtree.git nerdtree.git
fi

if [ ! -d "pathogen.git" ]; then
    color_echo "Downloading pathogen"
    git clone --depth 1 https://github.com/tpope/vim-pathogen.git pathogen.git
fi
