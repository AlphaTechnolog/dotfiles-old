#!/bin/bash

##################################
############   Menu   ############
##################################

main_menu() {
  clear

  echo "##########################################"
  echo "#### Welcome to my dotfiles installer ####"
  echo "##########################################"

  echo "----------------------------------------"

  echo "Steps:"
  printf "  1. Clone the dotfiles (not required if already have)\n"
  printf "  2. Install the required programs\n"
  printf "  3. Create .config symlinks\n"
  printf "  4. Create $HOME symlinks\n"
  printf "  5. Create .local/bin symlinks (optional because the step 1 already apply this)\n"
  printf "  6. Setup rofi\n"
  printf "  7. Setup wl wallpaper\n"
  printf "  8. Exit of installer\n"
  echo
  echo "Uninstall:"
  printf "  9. Remove all config\n"

  echo "----------------------------------------"

  printf "=> Write the option to make: "
  read option

  while [[ $option < 1 || $option > 9 && "$option" -eq "$option" ]]; do
    echo "==> Invalid option!"
    printf "=> Write the option to make: "
    read option
  done

  case "$option" in
    1) clone_dotfiles ;;
    2) install_required_programs ;;
    3) create_DOT_config_symlinks ;;
    4) create_home_symlinks ;;
    5) create_local__bin_symlinks;;
    6) setup_rofi ;;
    7) setup_wallpaper ;;
    8) clear && echo "Bye bye. Enjoy!!!" && exit 0;;
    9) remove_all_config ;;
  esac
}

#################################
########### Functions ########### 
#################################

error() {
  2> echo "$1"
  exit 1
}

title() {
  text=$1

  if [[ $text == "" ]]; then
    error "Installer error: title text cannot be empty"
  fi

  sep=""

  for (( i=0; i<${#text}; i++ )); do
    sep="$sep-"
  done

  sep="$sep----"

  echo "$sep"
  echo "  $text"
  echo "$sep"
  echo
}

confirm() {
  text=$1
  default_response=$2

  if [[ $default_response == 1 ]]; then
    yn="Y/n"
  elif [[ $default_response == 0 ]]; then
    yn="y/N"
  elif [[ $default_response == "" ]]; then
    yn="Y/n"
    default_response=1
  else
    error "confirm error: default_response is distinct than 1, 0 or void"
  fi

  printf "$text $yn: "
  read response

  while [[ $response != "y" && $response != "Y" && $response != "n" && $response != "N" && $response != "" ]]; do
    printf "Invalid response. $text $yn: "
    read response
  done

  if [[ $response == "y" || $response == "Y" ]]; then
    return 0
  elif [[ $response == "n" || $response == "N" ]]; then
    return 1
  else
    if [[ $default_response == 1 ]]; then
      return 0
    else
      return 1
    fi
  fi
}

press_enter_to_continue() {
  printf "Press ENTER to continue... "
  read
}

prevented_process() {
  command=$@

  if [[ $command == "" ]]; then
    error "program error: prevented_process: command cannot be void"
  fi

  $command

  if [[ $? != 0 ]]; then
    if ! confirm "The command \"$command\" was exit without exit status 0, do you want to continue?" 0; then
      exit 1
    fi
  fi
}

install_required_programs() {
  clear
  title "Install the required programs"

  echo "*****************Before run this, install git!****************"

  declare -a dependencies=(
    "conky",
    "nm-applet",
    "trayer",
    "emacs"
  )

  pypi_dependencies="wl-wall qtile"

  declare -a to_recompile_dependencies=(
    "volumeicon",
    "rofi",
    "nvim",
    "alacritty",
    "picom",
    "xmonad",
    "xmobar",
    "fish",
    "cbatticon",
    "udiskie",
    "bspwm",
    "spectrwm"
  )

  declare -a to_manually_install_dependencies=(
    "brave-browser",
    "colorscript",
    "bash-insulter"
  )

  if confirm "Do you want to install the required programs with apt and git, if not, I list all packages you will install" 1; then
    title "Dependencies installing process"

    if ! confirm "Do you want to skip the python libraries installing process?" 0; then
      printf "Please write the python binary name to use pypi: "
      read python

      while [[ $python == "" ]]; do
        printf "Invalid python binary name. Please write the python binary name to use pypi: "
        read python
      done

      for dependency in $pypi_dependencies; do
        echo "==> ${python} -m pip install $dependency"
        prevented_process $python -m pip install $dependency
      done
    fi

    if ! confirm "Do you want to skip the apt dependencies installing process?" 0; then
      for dependency in ${dependencies[@]}; do
        echo "==> sudo apt-get install --yes $dependency"

        # Making a stupid sudo echo to prevent password prompt in the apt while
        prevented_process sudo echo "sudoconverting..." 2>&1 > /dev/null
        prevented_process sudo apt-get install --yes $dependency
      done
    fi

    if confirm "Exists dependencies to recompile manually go to its website, list it?" 1; then
      echo "-----------------"
      echo "Listing the dependencies to recompile manually..."

      for dependency in ${to_recompile_dependencies[@]}; do
        echo "  -> $dependency"
      done

      echo "Done."
    fi

    if confirm "Exists dependencies to install manually go to its website, list it?" 1; then
      echo "-----------------"
      echo "Listing the dependencies to install manually..."

      for dependency in ${to_manually_install_dependencies[@]}; do
        echo "  -> $dependency"
      done

      echo "Done."
    fi
  else
    clear
    title "Dependencies store"
    echo "Listing the apt packages list..."

    for dependency in ${dependencies[@]}; do
      echo "  -> $dependency"
    done

    echo "Done."
    echo "-----------------"
    echo "Listing the python (pypi) dependencies..."

    for dependency in $pypi_dependencies; do
      echo "  -> $dependency"
    done

    echo "Done."

    echo "-----------------"
    echo "Listing the dependencies to recompile manually..."

    for dependency in ${to_recompile_dependencies[@]}; do
      echo "  -> $dependency"
    done

    echo "Done."

    echo "-----------------"
    echo "Listing the dependencies to install manually..."

    for dependency in ${to_manually_install_dependencies[@]}; do
      echo " -> $dependency"
    done
  fi

  press_enter_to_continue
  main_menu
}

clone_dotfiles() {
  clear
  title "Clone the dotfiles"

  echo "*****************Before run this, install git!****************"

  repository_url="https://github.com/AlphaTechnolog/dotfiles.git"

  printf "Write the address to clone the dotfiles directory (default $HOME) (it appends .dotfiles): "
  read directory

  if [[ $directory == "" ]]; then
    directory="$HOME"
  fi

  while ! confirm "Is this url correct: '$directory/.dotfiles'?"; do
    printf "Write the address to clone the dotfiles directory: "
    read directory
  done

  prevented_process git clone $repository_url $directory/.dotfiles

  if ! confirm "Do you want to skip the .local/bin custom scripts installing process?" 0; then
    echo "==> mkdir -p $HOME/.local/bin/"
    mkdir -p $HOME/.local/bin

    declare -a local__bin_scripts=(
      "wl-random-wallpaper",
      "wl-wallpapers-rotator"
    )

    cd $directory/.dotfiles
    mkdir -p $HOME/.local/bin

    for dependency in ${local__bin_scripts[@]}; do
      echo "==> ln -s $PWD/.local/bin/$dependency $HOME/.local/bin/$dependency"
      prevented_process ln -s $PWD/.local/bin/$dependency $HOME/.local/bin/$dependency
    done
  fi

  press_enter_to_continue
  main_menu
}

create_DOT_config_symlinks() {
  clear
  title "Create .config symlinks"

  printf "=> Write the .dotfiles folder fullpath (default: $HOME/.dotfiles): "
  read dotfiles_path

  if [[ $dotfiles_path == "" ]]; then
    dotfiles_path="$HOME/.dotfiles"
  fi

  if [[ ! -d $dotfiles_path ]]; then
    error "Error at try to read $dotfiles_path: No such file or directory"
  fi

  for dirent in $(ls "${dotfiles_path}/.config"); do
    echo "==> ln -s $dotfiles_path/.config/$dirent $HOME/.config/$dirent"
    prevented_process ln -s $dotfiles_path/.config/$dirent $HOME/.config/$dirent
  done

  press_enter_to_continue
  main_menu
}

create_home_symlinks() {
  clear
  title "Create home symlinks"

  printf "=> Write the .dotfiles folder fullpath (default $HOME/.dotfiles): "
  read dotfiles_path

  if [[ $dotfiles_path == "" ]]; then
    dotfiles_path="$HOME/.dotfiles"
  fi

  if [[ ! -d $dotfiles_path ]]; then
    error "Error at try to read $dotfiles_path: No such file or directory"
  fi

  to_paste=".bashrc .xmonad .gtkrc-2.0 .Xresources"

  for to_paste_item in ${to_paste[@]}; do
    if [[ -f $HOME/$to_paste_item ]]; then
      echo "==> rm $HOME/$to_paste_item"
      rm $HOME/$to_paste_item
    fi

    echo "==> ln -s $dotfiles_path/$to_paste_item $HOME/$to_paste_item"
    prevented_process ln -s $dotfiles_path/$to_paste_item $HOME/$to_paste_item
  done

  press_enter_to_continue
  main_menu
}

create_local__bin_symlinks() {
  clear
  title "Create .local/bin symlinks"

  printf "=> Write the .dotfiles folder fullpath (default $HOME/.dotfiles): "
  read dotfiles_path

  if [[ $dotfiles_path == "" ]]; then
    dotfiles_path="$HOME/.dotfiles"
  fi

  if [[ ! -d $dotfiles_path ]]; then
    error "Error at try to read $dotfiles_path: No such file or directory"
  fi

  to_paste="monitor-config wl-random-wallpaper wl-wallpapers-rotator"

  for to_paste_item in $to_paste; do
    echo "==> ln -s $dotfiles_path/.local/bin/$to_paste_item $HOME/.local/bin/$to_paste_item"
    prevented_process ln -s $dotfiles_path/.local/bin/$to_paste_item $HOME/.local/bin/$to_paste_item
  done

  press_enter_to_continue
  main_menu
}

remove_all_config() {
  clear
  title "Remove all config"

  printf "=> Write the cloned dotfiles path (default $HOME/.dotfiles): "
  read dotfiles_path

  if [[ $dotfiles_path == "" ]]; then
    dotfiles_path="$HOME/.dotfiles"
  fi

  if confirm "Do you want to remove all .config symlinks?"; then
    for dirent in $(ls $dotfiles_path/.config); do
      echo "==> rm $HOME/.config/$dirent"
      rm $HOME/.config/$dirent
    done

    if confirm "Neovim has a special uninstallation method, do you want to uninstall it?"; then
      echo "==> rm -rf $HOME.cache/nvim $HOME.local/share/nvim"
      rm -rf $HOME.cache/nvim $HOME.local/share/nvim
    fi
  fi
}

setup_rofi() {
  clear
  title "Setup rofi"

  echo "****To setup rofi I will create the theme file into your .local/share/rofi/themes****"

  printf "=> Write the dotfiles folder path (default $HOME/.dotfiles): "
  read dotfiles_path

  if [[ $dotfiles_path == "" ]]; then
    dotfiles_path=$HOME/.dotfiles
  fi

  if [[ ! -d $dotfiles_path ]]; then
    error "Error at try to open $dotfiles_path: No such file or directory"
  fi

  echo "==> mkdir -p $HOME/.local/share/rofi/themes"
  prevented_process mkdir -p $HOME/.local/share/rofi/themes

  echo "==> ln -s $dotfiles_path/.local/share/rofi/themes/onedark.rasi $HOME/.local/share/rofi/themes/onedark.rasi"
  prevented_process ln -s $dotfiles_path/.local/share/rofi/themes/onedark.rasi $HOME/.local/share/rofi/themes/onedark.rasi 

  echo "Done."

  press_enter_to_continue
  main_menu
}

setup_wallpaper() {
  clear
  title "Setup the wl wallpaper"

  printf "=> Write the dotfiles path (default $HOME/.dotfiles): "
  read dotfiles_path

  if [[ $dotfiles_path == "" ]]; then
    dotfiles_path="$HOME/.dotfiles"
  fi

  if [[ ! -d $dotfiles_path ]]; then
    error "Error at try to open $dotfiles_path: No such file or directory"
  fi

  echo "==> $HOME/.local/bin/wl config -k wallpapers_folder -v $dotfiles_path/wallpapers"
  prevented_process $HOME/.local/bin/wl config -k wallpapers_folder -v $dotfiles_path/wallpapers

  if confirm "Do you want to setup a default wl wallpaper 38.jpeg? " 1; then
    echo "==> $HOME/.local/bin/wl set 38.jpeg"
    prevented_process $HOME/.local/bin/wl set 38.jpeg
  fi

  press_enter_to_continue
  main_menu
}

main_menu

