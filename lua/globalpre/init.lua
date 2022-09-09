-- 判断当前操作系统，设置config全局变量
require('vimconfig.fn')
NowOs = IfOs()
if NowOs == "Windows" then
    BasePath = "  ~/AppData/Local/nvim/"
    PlugPath = "~/AppData/Local/nvim/"
elseif NowOs == "Linux" then
    BasePath = "  ~/.config/nvim/"
    PlugPath = "~/.config/nvim/"
end
