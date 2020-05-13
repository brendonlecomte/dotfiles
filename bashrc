export PATH=~/gcc-arm-none-eabi-8-2018-q4-major/bin/:$PATH
export EDITOR=vi

if [ -d ~/arcanist ]; then
  export PATH=~/arcanist/arcanist/bin:$PATH
  export PATH=tools/arctools:$PATH
  source ~/arcanist/arcanist/resources/shell/bash-completion
fi

if [ -n $(which fish) ]; then
  export SHELL=$(which fish)
fi