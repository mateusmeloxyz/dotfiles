# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# My Aliases
alias yt='yt-dlp --add-metadata -i'
alias yta='yt -x -f mp3/bestaudio/best'
alias yt4='yt -f mp4'
alias yt3='yt -x --audio-format mp3 --prefer-ffmpeg'
alias yt3l='yt3 -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias ytl='yt -o "%(autonumber)s-%(title)s.%(ext)s"'
alias yt4l='yt4 -o "%(autonumber)s-%(title)s.%(ext)s"'

alias ru='rsync -uvrP --delete-after' # ~/local-folder/ root@web.xyz:/remotefolder/
alias ribag='ru ~/projects/ibag/ibag/output/ root@mateusmelo.xyz:/var/www/ibag/'
alias rsermons='ru ~/projects-t400/personal/logos/storage/recordings/ root@mateusmelo.xyz:/var/www/logos/storage/recordings/'
alias rmateus='ru ~/projects/personal/mateusmeloxyz/public/ root@mateusmelo.xyz:/var/www/logos/'
alias config='/usr/bin/git --git-dir=/home/mgm/.cfg/ --work-tree=/home/mgm'
