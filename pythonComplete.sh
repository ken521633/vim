git clone https://github.com/rkulla/pydiction
cd pydiction
cp -rf after/  ~/.vim/
mkdir -p ~/.vim/tools/pydiction
cp complete-dict ~/.vim/tools/pydiction
echo "修改.vimrc文件"
echo "filetype plugin on"
echo "let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict' "
