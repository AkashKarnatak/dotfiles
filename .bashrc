# Set MYVIMRC path
export MYVIMRC=$HOME/.config/nvim/init.vim
export VISUAL=nvim
export EDITOR=nvim

# Variables for tmux
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

# Hack to open konsole instead of gnome-terminal from nautilis
if ps -o cmd= -p $(ps -o ppid= -p $$) | grep -q gnome; then
  nohup konsole --workdir $PWD &> /dev/null &
  sleep 0.1s
  exit
fi
