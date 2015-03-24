"NeoBundleLazy 'gerw/vim-latex-suite'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let s:type='includegraphics'
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine

" mjirik redefinition of EFE with textwidth
call IMAP('EFI', "\\begin{figure}[<+htpb+>]\<CR>\\centering\<CR>\\includegraphics[width=0.9\\textwidth]{<+file+>}\<CR>\\caption{<+caption text+>}\<CR>\\label{fig:<+label+>}\<CR>\\end{figure}<++>", 'tex')
