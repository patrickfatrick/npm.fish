<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

## npm.fish

> An NPM aliases plugin for Fish shell based on [Oh My Zsh NPM Plugin][omz-npm-plugin]

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

| Alias   | Command                      | Descripton                                                      |
|:------  |:-----------------------------|:----------------------------------------------------------------|
| `npmg`  | `npm i -g`                   | Install dependencies globally                                   |
| `npmS`  | `npm i -S`                   | Install and save to dependencies in your package.json           |
| `npmD`  | `npm i -D`                   | Install and save to dev-dependencies in your package.json       |
| `npme`  | `PATH="$(npm bin)":"$PATH"`  | Run command from node_modules folder based on current directory |
| `npmo`  | `npm outdated`               | Check which npm modules are outdated                            |
| `npmv`  | `npm -v`                     | Check package versions                                          |
| `npml`  | `npm list`                   | List installed packages                                         |
| `npml0` | `npm ls --depth=0`           | List top-level installed packages                               |
| `npmst` | `npm start`                  | Run npm start                                                   |
| `npmt`  | `npm test`                   | Run npm test                                                    |
| `npmr`  | `npm run`                    | Run npm scripts                                                 |
| `npmp`  | `npm publish`                | Run npm publish                                                 |
| `npmi`  | `npm init`                   | Run npm init                                                    |

# License

[MIT][mit] © [Patrick Fricano][author]

[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/patrickfatrick
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[fisher-link]:    https://github.com/jorgebucaran/fisher

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-npm-plugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm