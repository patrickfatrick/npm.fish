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
__npm_make_function npmg 'npm install -g'
__npm_make_function npmS 'npm install -S'
__npm_make_function npmD 'npm install -D'
__npm_make_function npme 'PATH="(npm bin)":"$PATH"'
__npm_make_function npmo 'npm outdated'
__npm_make_function npmv 'npm version'
__npm_make_function npml 'npm list'
__npm_make_function npml0 'npm list --depth=0'
__npm_make_function npmst 'npm start'
__npm_make_function npmt 'npm test'
__npm_make_function npmr 'npm run'
__npm_make_function npmp 'npm publish'
__npm_make_function npmi 'npm init'
__npm_make_function npmu 'npm uninstall'

functions -e __npm_make_function
functions -e __npm_function_string
set -e special_functions