CUR_DIR=`pwd`
BACKUP_EXT=".backup."`date +%Y%m%d_%H%M`

install-vim:
	# backup
	echo  ~/.vimrc${BACKUP_EXT}
	if [ -f ~/.vimrc ] || [ -L ~/.vimrc ]; then \
		mv ~/.vimrc ~/.vimrc${BACKUP_EXT}; \
	fi
	#echo 
	if [ ! -d ~/.vim ]; then \
		mkdir ~/.vim; \
	fi
	if [ -d ~/.vim/bundle ]; then \
		mv ~/.vim/bundle ~/.vim/bundle${BACKUP_EXT}; \
	fi
	if [ -d ~/.vim/autoload ]; then \
		mv ~/.vim/autoload ~/.vim/autoload${BACKUP_EXT}; \
	fi
	# add symlinks
	ln -s -f ${CUR_DIR}/vim/vimrc ~/.vimrc
	ln -s -f ${CUR_DIR}/vim/bundle ~/.vim/bundle
	ln -s -f ${CUR_DIR}/vim/autoload ~/.vim/autoload

