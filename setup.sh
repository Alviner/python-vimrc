#!/usr/bin/env bash
wrapper() {
  RED="\033[0;31m"
  GREEN="\033[0;32m"
  YELLOW="\033[0;33m"
  BLUE="\033[0;36m"
  NORMAL="\033[0m"

  REPO_HTTPS="https://github.com/Alviner/python-vimrc.git"

echo "${BLUE}"
cat << "HELLO_TEXT"
                          iiii
                         i::::i
                          iiii

vvvvvvv           vvvvvvviiiiiii    mmmmmmm    mmmmmmm   rrrrr   rrrrrrrrr       cccccccccccccccc
 v:::::v         v:::::v i:::::i  mm:::::::m  m:::::::mm r::::rrr:::::::::r    cc:::::::::::::::c
  v:::::v       v:::::v   i::::i m::::::::::mm::::::::::mr:::::::::::::::::r  c:::::::::::::::::c
   v:::::v     v:::::v    i::::i m::::::::::::::::::::::mrr::::::rrrrr::::::rc:::::::cccccc:::::c
    v:::::v   v:::::v     i::::i m:::::mmm::::::mmm:::::m r:::::r     r:::::rc::::::c     ccccccc
     v:::::v v:::::v      i::::i m::::m   m::::m   m::::m r:::::r     rrrrrrrc:::::c
      v:::::v:::::v       i::::i m::::m   m::::m   m::::m r:::::r            c:::::c
       v:::::::::v        i::::i m::::m   m::::m   m::::m r:::::r            c::::::c     ccccccc
        v:::::::v        i::::::im::::m   m::::m   m::::m r:::::r            c:::::::cccccc:::::c
         v:::::v         i::::::im::::m   m::::m   m::::m r:::::r             c:::::::::::::::::c
          v:::v          i::::::im::::m   m::::m   m::::m r:::::r              cc:::::::::::::::c
           vvv           iiiiiiiimmmmmm   mmmmmm   mmmmmm rrrrrrr                cccccccccccccccc
HELLO_TEXT
echo "${NORMAL}"

  if [ ! -n "$VIM" ]; then
    VIM=$HOME/.vim
  fi

  if [ -d "$VIM" ]; then
    printf "${YELLOW}%s${NORMAL}\n" "You already have $VIM directory."
    printf "${YELLOW}%s${NORMAL}\n" "You have to remove $VIM if you want to re-install."
    exit 0
  fi

  # Prevent the cloned repository from having insecure permissions. Failing to do
  # so causes compinit() calls to fail with "command not found: compdef" errors
  # for users with insecure umasks (e.g., "002", allowing group writability). Note
  # that this will be ignored under Cygwin by default, as Windows ACLs take
  # precedence over umasks except for filesystems mounted with option "noacl".
  umask g-w,o-w

  printf "${BLUE}%s${NORMAL}\n" "Cloning vimrc from ${REPO_HTTPS}"

  hash git >/dev/null 2>&1 || {
    printf "${RED}%s${NORMAL}\n" "Error: git is not installed."
    exit 1
  }

  env git clone --depth=1 $REPO_HTTPS $VIM || {
    printf "${RED}%s${NORMAL}\n" "Error: git clone of vimrc repo failed."
    exit 1
  }

  printf "${BLUE}%s${NORMAL}\n" "Looking for an existing vim config..."
  if [ -f $HOME/.vimrc ] || [ -h $HOME/.vimrc ]; then
    printf "${YELLOW}%s${NORMAL}\n" "Found $HOME/.vimrc."
    printf "${BLUE}%s${NORMAL}\n" "You will see your old $HOME/.vimrc as $VIM/vimrc.bak"
    mv $HOME/.vimrc $VIM/vimrc.bak
  fi

  printf "${BLUE}%s${NORMAL}\n" "Symlinking $VIM/vimrc with $HOME/.vimrc..."
  ln -fs $VIM/vimrc $HOME/.vimrc
  ln -fs $VIM/vimrc $HOME/.config/nvim/init.vim

  if [ ! -d "$VIM/autoload/plug.vim" ]; then
      printf "${BLUE}%s${NORMAL}\n" "Installing Plug..."
      curl -fLo $VIM/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi


  printf "${GREEN}%s${NORMAL}\n" "Vimrc has been configured ;)"
  printf "${YELLOW}%s${NORMAL}\n" "Do not worry about error messages. When it occurs just press enter and wait till all plugins are installed."
  printf "${BLUE}%s${NORMAL}\n" "Keep calm and use VIM!"
}

wrapper
vim +PlugInstall
