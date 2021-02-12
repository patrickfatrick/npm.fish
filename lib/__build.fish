set special_functions (string replace '.fish' '' (ls (pwd)/lib | grep -v -e '^__'))

for fn in $special_functions
  set -l src (pwd)/lib/$fn.fish
  set -l dest (pwd)/functions
  echo copying $src '-->' $dest
  cp -f $src $dest
end

function __npm_function_string -a name body desc
  set wrapped_cmd (string replace -a -r ' --?[a-zA-Z0-9-]+(="?.+"?)?' '' $body)
  set base_cmd (
    echo (string match -ar '[a-zA-Z0-9-]+' $wrapped_cmd)[-1..2]
  )

  set description (
    complete -C 'npm ' | grep "^$base_cmd\s" | \
    string replace -r $base_cmd '' | \
    string trim
  )

  echo "function $name"(test -n "$wrapped_cmd"; and echo " -w '$wrapped_cmd'"; or echo '')(test -n "$description"; and echo " -d '$description'"; or echo '')"
  "$body" \$argv
end"
end

function __npm_make_function -a name body
  set -l target_dir (pwd)/functions
  set -l target_file $target_dir/$name.fish

  if contains $name $special_functions
    echo skipping $name
    return
  end

  echo writing $target_file
  rm $target_file 2> /dev/null
  touch $target_file
  __npm_function_string $name $body >> $target_file
end

# List from oh-my-zsh
__npm_make_function nig 'npm install -g'
__npm_make_function ni 'npm install'
__npm_make_function nis 'npm install -S'
__npm_make_function nid 'npm install -D'
__npm_make_function ne 'PATH="(npm bin)":"$PATH"'
__npm_make_function no 'npm outdated'
__npm_make_function nv 'npm version'
__npm_make_function nl 'npm list'
__npm_make_function nl0 'npm list --depth=0'
__npm_make_function nst 'npm start'
__npm_make_function nt 'npm test'
__npm_make_function nr 'npm run'
__npm_make_function np 'npm publish'
__npm_make_function ninit 'npm init'
__npm_make_function nun 'npm uninstall'

functions -e __npm_make_function
functions -e __npm_function_string
set -e special_functions