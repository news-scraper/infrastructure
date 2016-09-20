#!/bin/bash

set -ex

cat >> ~/.$(basename $SHELL)rc <<EOF
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby ruby-2.3.1
EOF

exec $SHELL

chruby ruby-2.3.1
