function npml0 -w 'npm ls --depth=0' -d 'List top-level installed packages'
  npm ls --depth=0 $argv
end
