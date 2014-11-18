# check environment
for c in vim ruby make
do
    if [ "$(which $c)" = '' ]; then
        echo need to install $c first
        exit
    fi
done

# copy dot files
cp _bashrc ~/.bash_profile
cp _tmux_conf ~/.tmux.conf
cp _vimrc ~/.vimrc

# setup vim bundle
vim +BundleInstall +q +q 2> /dev/null
vim +BundleInstall +q +q 2> /dev/null

cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
