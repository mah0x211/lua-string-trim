# lua-string-trim

[![test](https://github.com/mah0x211/lua-string-trim/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-string-trim/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/mah0x211/lua-string-trim/branch/master/graph/badge.svg)](https://codecov.io/gh/mah0x211/lua-string-trim)

trims the specified string or spaces from the string.


## Installation

```sh
luarocks install string-trim
```

---


## Usage

```lua
local trim = require('string.trim')

print(trim('    hello world!      '))
-- hello world!

print(trim.prefix('hello world!', 'hell'))
-- o world!

print(trim.suffix('hello world!', 'o world!'))
-- hell
```



## s = trim( s )

returns `s` with all leading and trailing `whitespace` removed.

**Params**

- `s:string`: a string.

**Returns**

- `s:string`: result string.


## s = trim.prefix( s, prefix )

returns `s` with the `prefix` removed.

**Params**

- `s:string`: a string.
- `prefix:string`: prefix string.

**Returns**

- `s:string`: result string.


## s = trim.suffix( s, suffix )

returns `s` with the `suffix` removed.

**Params**

- `s:string`: string.
- `suffix:string`: suffix string.

**Returns**

- `s:string`: result string.

