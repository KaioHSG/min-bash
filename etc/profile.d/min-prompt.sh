if test -f ~/.config/min-bash/min-prompt.sh
then
	. ~/.config/min-bash/min-prompt.sh
else
	PS1='\[\033]0;Bash: $PWD\007\]' # set window title
	PS1="$PS1"'\[\033[32m\]'        # change to green
	PS1="$PS1"'\u@\h'               # user@host<space>
	PS1="$PS1"'\[\033[0m\]'         # change color
	PS1="$PS1"':'
	PS1="$PS1"'\[\033[34m\]'        # change to brownish yellow
	PS1="$PS1"'\w'                  # current working directory
	PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"'$ '                 # prompt: always $
fi

MSYS2_PS1="$PS1"               # for detection by MSYS2 SDK's bash.basrc