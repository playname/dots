### collect_files.sh (v0.1)
### Used to copy all needed files from user's home directory into this repository

declare -a folders=(".config/dwm" ".config/st" ".config/slstatus" ".config/dmenu" "wallpapers")
declare -a files=(".xinitrc" ".zprofile" ".zshrc")

if [ ! -d "old" ] && [ -d "setup" ]; then
        echo "Creating folder: old"
        mkdir old
else
        if [ -d "old" ] && [ ! -z "$(ls -A old)" ]; then
                echo "Deleting old files"
                rm -rf old/*
        fi
fi

if [ ! -d "setup" ]; then
        echo "Creating folder: setup"
        mkdir setup
fi

# TODO: Hopefully find a more elegant way of doing this but I'm too tired to do it now
if [ ! -z "$(ls -A setup)" ]; then
	echo "Copying files from setup to old"
	cp -r "setup/." "old"
	
	echo "Deleting folder: setup"
	rm -rf "setup"
	echo "Creating folder: setup"
	mkdir setup
fi

for f in "${folders[@]}"; do	
	echo "Creating folder: setup/$f"
	mkdir -p "setup/$f"
	
	echo "Copying ${HOME}/$f to setup/$f"
	cp -r "${HOME}/$f/." "setup/$f"
done

for f in "${files[@]}"; do
	if [[ ${f%/*} != $f ]]; then
		echo "Creating folder: setup/${f%/*}"
		mkdir -p "setup/${f%/*}"
	fi

	echo "Copying ${HOME}/$f to setup/${f%/*}"
	cp "${HOME}/$f" "setup/${f%/*}"
done
