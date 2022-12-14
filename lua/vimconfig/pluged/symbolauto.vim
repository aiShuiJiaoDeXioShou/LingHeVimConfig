" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
function! RemovePairs()
    let l:line = getline(".")
    let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
     
    if index(["(", "[", "{"], l:previous_char) != -1
    let l:original_pos = getpos(".")
    execute "normal %"
    let l:new_pos = getpos(".")
     
    " 如果没有匹配的右括号
    if l:original_pos == l:new_pos
    execute "normal! a\<BS>"
    return
    end
     
    let l:line2 = getline(".")
    if len(l:line2) == col(".")
    " 如果右括号是当前行最后一个字符
    execute "normal! v%xa"
    else
    " 如果右括号不是当前行最后一个字符
    execute "normal! v%xi"
    end
     
    else
    execute "normal! a\<BS>"
    end
    endfunction

" 输入一个字符时，如果下一个字符也是括号，则删除它，避免出现重复字符
function! RemoveNextDoubleChar(char)
    let l:line = getline(".")
    let l:next_char = l:line[col(".")] " 取得当前光标后一个字符
     
    if a:char == l:next_char
    execute "normal! l"
    else
    execute "normal! i" . a:char . ""
    end
    endfunction

"  原来的自动括号补全插件配置
" 用退格键删除一个左括号时同时删除对应的右括号
"  inoremap <BS> <ESC>:call RemovePairs()<CR>a
"  inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
"  inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
"  inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a

" 插入时的括号匹配
"  inoremap { {<CR>}<Up><Enter>
"  inoremap ( ()<Left>
"  inoremap < <><Left>
"  inoremap [ []<Left>
"  :inoremap " ""<ESC>i
"  :inoremap ' ''<ESC>i

" 配置括号自动补全插件
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})