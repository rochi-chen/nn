package = "nn"
version = "scm-1"

source = {
   url = "git://github.com/andresy/torch7-split.git",
   dir = "torch7-split/rocks/nn"
}

description = {
   summary = "Neural Network package for Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/nn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
