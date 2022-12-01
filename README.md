<img src="https://github.com/fish-shell/fish-shell/blob/master/doc_src/python_docs_theme/static/fish.png?raw=true" align="left" width="144px" height="144px"/>

## npm.fish

> A collection of NPM functions for Fish shell based on [Oh My Zsh NPM Plugin][omz-npm-plugin]

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.1.0-007EC7.svg?style=flat-square)](https://fishshell.com)

## Installation

[oh-my-fish][omf-link]:

```fish
$ omf install https://github.com/patrickfatrick/npm.fish
```

[fisher][fisher-link]:
```fish
$ fisher install patrickfatrick/npm.fish
```

## Aliases

| Alias | Command                    |
|:------|:---------------------------|
| ni    | npm i                      |
| nig   | npm i -g                   |
| nis   | npm i -S                   |
| nid   | npm i -D                   |
| ne    | PATH="$(npm bin)":"$PATH"  |
| no    | npm outdated               |
| nv    | npm version                |
| nl    | npm list                   |
| nl0   | npm ls --depth=0           |
| nst   | npm start                  |
| nt    | npm test                   |
| nr    | npm run                    |
| np    | npm publish                |
| ninit | npm init                   |
| nun   | npm uninstall              |

# License

[MIT][mit] © [Patrick Fricano][author]

[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/patrickfatrick
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[fisher-link]:    https://github.com/jorgebucaran/fisher

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-npm-plugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm
