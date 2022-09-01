lua << EOF
require'main'.setup{}
EOF


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
