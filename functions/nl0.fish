function nl0 -w 'npm list' -d 'List installed packages'
  npm list --depth=0 $argv
end
