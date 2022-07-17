export EDITOR=${EDITOR:-/bin/nvim}
export PAGER=${PAGER:-/usr/bin/less}

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
