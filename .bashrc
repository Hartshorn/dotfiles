#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# 1 = off; 0 = on; touchpad toggle
alias tpon="synclient TouchpadOff=0"
alias tpoff="synclient TouchpadOff=1"

alias ls='ls --color=auto'
alias sbcl='rlwrap sbcl'
alias csi='rlwrap csi'

alias weather='curl -s wttr.in | head -n -2'
alias moon='curl -s wttr.in/Moon | head -n -2'

alias statusbar='~/scripts/statusbar.sh'

#
# leaving these here for historical reasons - turned it into
# a c program, though admitedly this is much simpler.
#
#alias dim='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 2441'
#alias bright='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 4882'
alias dim='echo "Please use the b program - usage: sudo b dim / bright"'
alias bright='echo "Please use the b program - usage: sudo b dim / bright"'


# path to cross compiler for osdev
export PATH="/home/michael/builds/cross-compiler/opt/cross/bin/:$PATH"


PS1='[\u@\h \W]\$ '
EDITOR='vim'
