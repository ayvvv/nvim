lua << EOF
require'main'.setup{}
EOF

set autochdir
nnoremap gp :tabp<CR>
nnoremap gn :tabn<CR>
nnoremap g1 :tabnext 1<CR>
nnoremap g2 :tabnext 2<CR>
nnoremap g3 :tabnext 3<CR>
nnoremap g4 :tabnext 4<CR>
nnoremap g5 :tabnext 5<CR>
nnoremap g6 :tabnext 6<CR>
nnoremap g7 :tabnext 7<CR>
nnoremap g8 :tabnext 8<CR>
nnoremap g9 :tabnext 9<CR>


" 创建悬浮窗口
" lua << EOF

" local lines = vim.o.lines
" local columns = vim.o.columns
" local buffer = vim.api.nvim_create_buf(false, true)

" vim.api.nvim_buf_set_lines(buffer, 0, -1, true, {'text', 'text'})

" local opts = {
    " relative = 'win',
    " width = math.floor(columns / 2),
    " height = math.floor(lines / 2),
    " col = math.floor(columns / 4),
    " row = math.floor(lines / 4),
    " anchor = 'NW',
    " style = 'minimal',
    " border = {"╔", "═" ,"╗", "║", "╝", "═", "╚", "║" }
" }

" local window = vim.api.nvim_open_win(buffer, true, opts)
" vim.api.nvim_win_set_option(window,  'winhl', '');
" EOF
"

tnoremap <Esc> <C-\><C-n>

autocmd BufNewFile *.vue,*.js,*.ts :call Setfilehead()

func Setfilehead()
    let filetype = strpart(expand('%'), stridx(expand('%'), '.'))

    if filetype == '.vue'
        call append(0, '/***********************************************')
        call append(1, '#')
        call append(2, '#      Filename: '.expand("%"))
        call append(3, '#')
        call append(4, '#        Author: Clough - clough@gmail.com')
        call append(5, '#   Description: ---')
        call append(6, '#        Create: '.strftime("%Y-%m-%d %H:%M:%S"))
        call append(7, '# Last Modified: '.strftime("%Y-%m-%d %H:%M:%S"))
        call append(8, '***********************************************/')
    endif

endfunc
