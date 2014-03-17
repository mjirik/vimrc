#!

# Ubuntu
sudo apt-get install curl


#mac os
sudo port install py-pep8


# -------

echo "delete old .vimrc  `pwd`"
mv ~/.vimrc ~/.vimrc.bck
mv -f ~/.vim/ftplugin ~/.vim/ftplugin.bck


ln -s `pwd`/.vimrc ~/

# file type setup
ln -s `pwd`/_vim/ftplugin ~/.vim/

#cd ~/.vim/
mkdir -p ~/.vim/colors && cd ~/.vim/colors

curl -so ~/.vim/colors/wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400


#git pull git@github.com:mjirik/vimrc.git


#wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400


mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/autoload
curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

#cp ./.vimrc ~/.vimrc


cd ~/.vim/ 



cd ~/.vim/bundle

git clone https://github.com/tpope/vim-fugitive.git
git clone git://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/sjl/gundo.vim.git
git clone https://github.com/klen/python-mode
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/gerw/vim-latex-suite.git

#mkdir -p ~/.vim/ftplugin
#wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492



