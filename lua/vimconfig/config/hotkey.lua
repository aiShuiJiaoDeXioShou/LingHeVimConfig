require("vimconfig.fn.hotkeyfn")
Map { "i", "jk", "<Esc>" }
Map { "", "<C-n>", ":NERDTreeToggle<CR>" }
Map { "n", "<space>", ":" }
Map { "i", "cv", "<C-n>" }
-- 编译运行文件
Map { "n", "r", ":call CompileRunGcc()<CR>" }
