# Gundam colors - Blue / Red / Yellow / White
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
NC='\033[0m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTYELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

username() {
  echo "[${LIGHTRED}${USER}${NC}@${LIGHTBLUE}${HOST}${NC}]"
}

directory() {
  echo "[${LIGHTYELLOW}%~${NC}]"
}

date() {
  echo "[${LIGHTBLUE}%*${NC}]"
}

gundam() {
  echo "\nガンダム "
}

ZSH_THEME_GIT_PROMPT_PREFIX="[${LIGHTRED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${NC}]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
# set the git_prompt_status text
ZSH_THEME_GIT_PROMPT_ADDED="%{${LIGHTYELLOW}%} ✈%${NC}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{${LIGHTYELLOW}%} ✭%${NC}"
ZSH_THEME_GIT_PROMPT_DELETED="%{${LIGHTYELLOW}%}✗%${NC}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{${LIGHTYELLOW}%} ➦%${NC}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{${LIGHTYELLOW}%} ✂%${NC}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{${LIGHTYELLOW}%} ✱%${NC}"

PROMPT='$(username)$(directory)$(git_prompt_info)$(date)$(gundam)'
