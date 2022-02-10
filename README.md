# lua-dirname

[![test](https://github.com/mah0x211/lua-dirname/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-dirname/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/mah0x211/lua-dirname/badge.svg?branch=master)](https://coveralls.io/github/mah0x211/lua-dirname?branch=master)

extract the directory part of a pathname.


## Installation

```
luarocks install dirname
```


## dir = dirname( pathname )

extract the directory part of a pathname.

**Parameters**

- `pathname:string`: pathname string.

**Returns**

- `dir:string`: the directory part of a pathname.

**Example**

```lua
local dirname = require('dirname')

-- the trailing-slash will be deleted.
local dir = dirname('///usr///bin///')
print(dir) -- '/usr'
```
