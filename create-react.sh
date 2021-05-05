#!/bin/bash
DEF_NAME="example"

CYAN="\e[36m"
GREY="\e[37m"
RESET="\e[0m"

_quest() { echo -e "${CYAN}?${RESET}"; }
_hint() { echo -e "${GREY}($1)${RESET}"; }

read -r -p "$(_quest) Project Name $(_hint $DEF_NAME) " _NAME
[ -z "$_NAME" ] && _NAME=$DEF_NAME

npx create-react-app $_NAME
cd $_NAME
export YourProject=$_NAME

## Setup Folder Structure
mkdir \
  /var/www/${_NAME}/config \
  /var/www/${_NAME}/src/assets \
  /var/www/${_NAME}/src/components \
  /var/www/${_NAME}/src/utils \
  /var/www/${_NAME}/src/pages