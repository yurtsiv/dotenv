IFS='/' read -r -a url_parts <<< $1

folder_name=${url_parts[-1]}
folder_path="vimrc/pack/git-plugins/start/$folder_name"

git submodule add $1 $folder_path

