package = "string-trim"
version = "scm-1"
source = {
    url = "git://github.com/mah0x211/lua-string-trim.git"
}
description = {
    summary = "strip the space at both ends of string.",
    homepage = "https://github.com/mah0x211/lua-string-trim",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["string.trim"] = "trim.lua"
    }
}

