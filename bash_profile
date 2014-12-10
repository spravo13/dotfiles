if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	    . "$HOME/.bashrc"
    fi
fi
if [ -d "/sbin" ] ; then
	PATH="/sbin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
	PATH="/usr/sbin:$PATH"
fi
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
