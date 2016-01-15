    # alias l="ls -lah"
    # alias ll="ls -la"

    alias l='ls $LS_OPTIONS -lah'
    alias ll='ls $LS_OPTIONS -lA'
    alias ls='ls $LS_OPTIONS'
    alias la='ls -a'

    alias droplet='ssh root@192.81.217.82'

    alias miner='ssh -p 8181 scott@scott.zapto.org'

    # Git branch in prompt.
    # http://henrik.nyh.se/2008/12/git-dirty-prompt
    # http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
    #   username@Machine ~/dev/dir[master]$   # clean working directory
    #   username@Machine ~/dev/dir[master*]$  # dirty working directory

    function parse_git_dirty {
      [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
    }
    function parse_git_branch {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
    }
    export PS1='\u@\h \W\[\033[32m\] $(parse_git_branch)\[\033[00m\] $ '


    export SVN_EDITOR=/usr/bin/vi

    #terminal history stuff::
    export HISTCONTROL=ignoreboth
    export HISTSIZE=15000
    #export HISTTIMEFORMAT=”%F %T > ”
    #export GREP_OPTIONS=”–color=auto”
    #export GREP_COLOR=”1;32″
    shopt -s histappend

    #
    # Your previous /Users/scottr/.bash_profile file was backed up as /Users/scottr/.bash_profile.macports-saved_2012-08-10_at_09:22:07
    ##

    export PATH=/usr/local/bin:/usr/local/lib:/opt/local/bin:/opt/local/sbin:/usr/local/share/npm/bin:/Users/scottr/bin:$PATH
    export MAGICK_HOME="$HOME/bin/ImageMagick-6.8.6"
    export PATH="$MAGICK_HOME/bin:$PATH"
    #export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
    #export JAVA_HOME=/usr/bin/java
    export JMETER_HOME=/usr/local/bin/jmeter

    source ~/.git-completion.bash
    alias devweb18='ssh scottr@devweb18.acsysdev.com'

    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


    export NVM_DIR="/Users/scottr/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
