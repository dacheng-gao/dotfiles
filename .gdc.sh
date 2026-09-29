#!/bin/sh

# Load environment settings.
if [ -f "$HOME/.gdc.env.sh" ]; then
  . "$HOME/.gdc.env.sh"
fi

# Load command aliases.
if [ -f "$HOME/.gdc.alias.sh" ]; then
  . "$HOME/.gdc.alias.sh"
fi

# Load color settings.
if [ -f "$HOME/.gdc.color.sh" ]; then
  . "$HOME/.gdc.color.sh"
fi

# Raise the file descriptor soft limit when the platform permits it. Linux and
# macOS can expose different hard limits (and some shells report "unlimited"),
# so do not request a value above the current hard limit.
_gdc_nofile_soft=$(ulimit -Sn 2>/dev/null)
_gdc_nofile_hard=$(ulimit -Hn 2>/dev/null)
case "$_gdc_nofile_hard:$_gdc_nofile_soft" in
  unlimited:unlimited|[0-9]*:unlimited)
    :
    ;;
  unlimited:[0-9]*)
    ulimit -n 65536 2>/dev/null || :
    ;;
  [0-9]*:[0-9]*)
    _gdc_nofile_target=65536
    [ "$_gdc_nofile_hard" -lt "$_gdc_nofile_target" ] && _gdc_nofile_target=$_gdc_nofile_hard
    [ "$_gdc_nofile_soft" -lt "$_gdc_nofile_target" ] && ulimit -n "$_gdc_nofile_target" 2>/dev/null || :
    ;;
esac
unset _gdc_nofile_soft _gdc_nofile_hard _gdc_nofile_target
