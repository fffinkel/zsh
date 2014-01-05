source /opt/perlbrew/etc/bashrc
perlbrew use perl-5.12.4@blackjack

autoload bashcompinit
bashcompinit
source ~/.zsh/completion/cadillac.sh

export ADDRESSPLUS_APIKEY="WS36-TCQ1-DOA2"
export PERL5LIB="/home/mfinkel/src/blackjack/lib:$PERL5LIB"

export PATH="$PATH:/home/mfinkel/src/cadillac/bin"
export PERL5LIB="/home/mfinkel/src/cadillac/lib:$PERL5LIB"

export VIRTUAL_ENV_DISABLE_PROMPT=1
source /opt/aether_python/bin/activate
alias irssi='irssi --config=~/.irssi/config_aether'
