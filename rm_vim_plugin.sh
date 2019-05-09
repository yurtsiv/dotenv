folder="vimrc/pack/git-plugins/start/$1"
git submodule deinit $folder
git rm $folder
git add .
git commit -m "Removed $1 vim plugin"
rm -rf $folder


