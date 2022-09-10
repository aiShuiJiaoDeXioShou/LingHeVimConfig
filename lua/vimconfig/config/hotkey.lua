require("vimconfig.fn.hotkeyfn")
map { "i", "jk", "<Esc>" }
map { "", "<C-n>", ":NERDTreeToggle<CR>" }
map { "n", "<space>", ":" }
map { "i", "cv", "<C-n>" }
-- 编译运行文件
map { "n", "r", ":call CompileRunGcc()<CR>" }