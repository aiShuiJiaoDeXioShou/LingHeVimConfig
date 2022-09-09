require("vimconfig.fn.hotkeyfn")
map { "i", "jk", "<Esc>" }
map { "", "<C-n>", ":NERDTreeToggle<CR>" }
map { "n", "<space>", ":" }
map { "i", "cv", "<C-n>" }
map { "", "r", ":call CompileRunGcc()<CR>" }
