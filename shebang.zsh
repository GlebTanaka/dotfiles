#!/usr/bin/env zsh

echo "\n<<< Running $0 >>>\n"

exists brew && echo "exellent!!!" || echo "bogus"
exists nonexistent && echo "exelllent" || echo "bogus"

which exists
