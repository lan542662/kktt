#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias h = 'history'
alias ai='sudo pacman -S'
alias aiy='sudo pacman -Sy'
alias aiyu='sudo pacman -Syu'
alias aiyy='sudo pacman -Syy'

alias home='cd ~'

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

## GIT ##
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gp='git push'
alias gpm='git push origin master'
alias gd='git diff'

alias mx='chmod a+x'
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'

bashs = "exec $SHELL"
