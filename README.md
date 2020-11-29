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

| Alias   | Command                      |
|:------  |:-----------------------------|
| `npmg`  | `npm i -g`                   |
| `npmS`  | `npm i -S`                   |
| `npmD`  | `npm i -D`                   |
| `npme`  | `PATH="$(npm bin)":"$PATH"`  |
| `npmo`  | `npm outdated`               |
| `npmv`  | `npm version`                |
| `npml`  | `npm list`                   |
| `npml0` | `npm ls --depth=0`           |
| `npmst` | `npm start`                  |
| `npmt`  | `npm test`                   |
| `npmr`  | `npm run`                    |
| `npmp`  | `npm publish`                |
| `npmi`  | `npm init`                   |
| `npmu`  | `npm uninstall`              |

# License

[MIT][mit] © [Patrick Fricano][author]

[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/patrickfatrick
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
[fisher-link]:    https://github.com/jorgebucaran/fisher

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-npm-plugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm