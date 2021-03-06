package = "Shake"
version = "cvs-1"
source = {
   url = "git://github.com/keplerproject/shake.git",
}
description = {
   summary = "A Simple Lua Test Engine",
   detailed = [[
      Shake is a simple and transparent test engine for Lua that assumes
      that tests only use standard assert and print calls.
      Shake uses Leg and LPeg to preprocess test files and extract a lot
      more information than what is usually available when tests use
      standard Lua assertions.
   ]],
   license = "MIT/X11",
   homepage = "http://shake.luaforge.net/"
}
dependencies = {
   "lua >= 5.1",
   "leg >= 0.1.2",
   "luafilesystem >= 1.3.0",
}
build = {
   type = "make",
   variables = {
      LUA_DIR = "$(LUADIR)",
      SYS_BINDIR = "$(BINDIR)"
   }
}
