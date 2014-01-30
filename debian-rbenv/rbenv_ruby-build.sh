export PATH="/opt/rubies/shims:/opt/rbenv/bin:$PATH"
export PATH="/opt/rbenv/plugins/ruby-build/bin:$PATH"
export RBENV_KEEP_DIR=/opt/rbenv/src
export RBENV_ROOT=/opt/rubies
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

