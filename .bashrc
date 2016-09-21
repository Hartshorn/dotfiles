#
# ~/.bashrc
#

# if there is a problem with these proxy environment variables
# there is an additional line in the sudoers file that will
# keep those environment variables when using sudo
# this came up when trying to use "sudo pacman" as a regular user


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


export http_proxy="http://212579854:eis12ley@PITC-Zscaler-US-MilwaukeeZ.proxy.corporate.ge.com:9400"
export https_proxy="https://212579854:eis12ley@PITC-Zscaler-US-MilwaukeeZ.proxy.corporate.ge.com:9400"
export ftp_proxy="http://212579854:eis12ley@PITC-Zscaler-US-MilwaukeeZ.proxy.corporate.ge.com:9400"

#alias fullscreen='xrandr --output Virtual1 --mode 1680x1050'


