# Command to open file or folder using the default application
alias xopen=xdg-open
alias diff="diff --color=always"
alias ip='ip -color=auto'
alias less="less -R"
alias wget="wget --content-disposition"
alias termux_mount="sshfs -p 8022 u0_a229@192.168.43.1:/storage/emulated/0"
alias termux_mount_iit="sshfs -p 8022 u0_a229@172.16.11.240:/storage/emulated/0"
alias redmi6_mount="sshfs -p 8022 u0_a302@192.168.43.253:/storage/emulated/0"
alias cvim="nvim -c ':LoadCompe'"
alias crajs="npx degit AkashKarnatak/react-js-tailwind-starter#master"

function lt {
  ls -t --color=always $@ | head
}
function rgf {
  rg -L --hidden --files | rg $@
}

# Python venv aliases
alias venv_playground="conda activate playground"
alias venv_torch="conda activate torch"
alias venv_ganf="conda activate ganf"
alias venv_manim="source /home/akash/miniconda3/envs/manim/bin/activate"

# Custom nvim configs
alias chadvim='XDG_CONFIG_HOME=~/.nvim_custom/chad/config XDG_DATA_HOME=~/.nvim_custom/chad/share nvim'
alias lazyvim='XDG_CONFIG_HOME=~/.nvim_custom/lazy/config XDG_DATA_HOME=~/.nvim_custom/lazy/share nvim'
alias tvim='XDG_CONFIG_HOME=~/.nvim_custom/test/config XDG_DATA_HOME=~/.nvim_custom/test/share nvim'
# alias nvim='nvim --listen /tmp/nvim.pipe'
# alias ed='nvim --server /tmp/nvim.pipe --remote'

# lazy load conda
function conda {
  if [[ -z $CONDA_INITIALIZED ]]; then
    __conda_setup="$('/home/akash/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
      eval "$__conda_setup"
    else
      if [ -f "/home/akash/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/akash/miniconda3/etc/profile.d/conda.sh"
      else
        export PATH="/home/akash/miniconda3/bin:$PATH"
      fi
    fi
    unset __conda_setup
    CONDA_INITIALIZED=1
  fi
  if [ -d "/run/opengl-driver/lib" ] ; then
    export LD_LIBRARY_PATH=/run/opengl-driver/lib
  fi
  conda $@
}
