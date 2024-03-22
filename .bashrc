# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/node_modules/.bin/:$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/node_modules/.bin/:$HOME/.local/bin:$HOME/bin:$PATH"
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


alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"
alias ksmf-fetch="yadm fetch vpv-kickstart master"
alias ksmf-pull="yadm subtree pull --prefix .config/nvim vpv-kickstart master --squash"
