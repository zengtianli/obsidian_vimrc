" Have j and k navigate visual lines rather than logical ones
"  nmap j gj
"  nmap k gk
unmap <Space>
"  iunmap <Space>
"  iunmap <C-c>
" Reload Obsidian

exmap reload obcommand app:reload
nmap <Space>rl :reload
nmap U <C-r>
nmap S :w<CR>
exmap Q :tabclose
imap <C-c> <Backspace><Backspace>
"  imap <Space>h <Esc>xi
" imap jj <Esc>xa
" imap jk <Esc>caw

" nmap J 15j
" nmap K 15k
"  imap jk <Backspace><Backspace><Backspace><Backspace>
"  imap jk <Esc><Esc>

exmap goParent obcommand breadcrumbs:jump-to-first-up
map gu :goParent
exmap easymotion obcommand mrj-jump-to-link:activate-jump-to-anywhere
exmap easylink obcommand mrj-jump-to-link:activate-jump-to-link
map gw :easymotion
map gl :easylink

exmap df obcommand app:delete-file

exmap chgetitle obcommand workspace:edit-file-title
nmap tc :chgetitle 

exmap openLink obcommand editor:follow-link
exmap openintab obcommand editor:open-link-in-new-leaf
exmap opensplit obcommand editor:open-link-in-new-split
exmap openinwid obcommand editor:open-link-in-new-window
exmap movetwind obcommand workspace:move-to-new-window
exmap closewind obcommand workspace:close-window

"  map <C-p> :openLink
nmap <Space>ol :openLink
nmap <Space>ot :openintab
nmap <Space>os :opensplit
nmap <Space>ow :openinwid
nmap <Space>mw :movetwind
nmap <Space>cw :closewind

exmap plugope obcommand hotkey-helper:open-plugins
exmap plugbro obcommand hotkey-helper:browse-plugins
exmap plugset obcommand hotkey-helper:open-settings
exmap plughtk obcommand hotkey-helper:open-hotkeys
exmap plugurl obcommand obsidian42-brat:BRAT-openGitHubZRepository

nmap <Space>po :plugope
nmap <Space>pb :plugbro
nmap <Space>ps :plugset
nmap <Space>ph :plughtk
nmap <Space>pu :plugurl

nmap <Space>db ::%s/^\s*$\n//g
nmap <Space>dl ::%s/\s*$//g
"  nmap gl u<C-r>
"
exmap qkadd_date obcommand quickadd:choice:5480c3bd-c30c-4809-ab15-53359aa8b307
exmap codeblock_adm obcommand code-block-from-selection:6a0b839c-1e63-40bf-a82d-d7d2f9081313
exmap codeblock_select_adm jscommand { editor.setSelections([selection]); this.app.commands.commands['code-block-from-selection:6a0b839c-1e63-40bf-a82d-d7d2f9081313'].callback() }
exmap codeblock1 obcommand code-block-from-selection:5551a29b-6fbe-419d-8c9a-ad69dcf338bb
exmap codeblock_select1 jscommand { editor.setSelections([selection]); this.app.commands.commands['code-block-from-selection:5551a29b-6fbe-419d-8c9a-ad69dcf338bb'].callback() }
exmap codeblock2 obcommand code-block-from-selection:e3dea0f5-37f2-4d79-ae58-490af3228069
exmap codeblock_select2 jscommand { editor.setSelections([selection]); this.app.commands.commands['code-block-from-selection:e3dea0f5-37f2-4d79-ae58-490af3228069'].callback() }
exmap codeblock3 obcommand code-block-from-selection:0517e550-5f21-44b6-8232-d4cb3b76f6c4
exmap codeblock_select3 jscommand { editor.setSelections([selection]); this.app.commands.commands['code-block-from-selection:0517e550-5f21-44b6-8232-d4cb3b76f6c4'].callback() }
exmap codeblock4 obcommand code-block-from-selection:fa4231fd-b32f-4458-9b87-8deb65a73f3f
exmap codeblock_select4 jscommand { editor.setSelections([selection]); this.app.commands.commands['code-block-from-selection:fa4231fd-b32f-4458-9b87-8deb65a73f3f'].callback() }
exmap codeblock5 obcommand code-block-from-selection:0b696aea-5954-41cd-b749-11e121481aad
exmap codeblock_select5 jscommand { editor.setSelections([selection]); this.app.commands.commands['code-block-from-selection:0b696aea-5954-41cd-b749-11e121481aad'].callback() }

nmap <Space>td :qkadd_date
map  <Space>cad :codeblock_adm
vmap <Space>cad :codeblock_select_adm
map  <Space>cpy :codeblock1
vmap <Space>cpy :codeblock_select1
map  <Space>cjs :codeblock2
vmap <Space>cjs :codeblock_select2
map  <Space>csh :codeblock3
vmap <Space>csh :codeblock_select3
map  <Space>cvm :codeblock4
vmap <Space>cvm :codeblock_select4
map  <Space>cda :codeblock5
vmap <Space>cda :codeblock_select5

"  nmap \s :%s//g<left><left>
nmap \b :%s/^\s*$\n//g

map H ^
map L $
" Quickly remove search highlights
nmap <F9> :nohl
"  set clipboard=unnamed
" Copy to system clipboard
vmap Y "+y
" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
exmap forward obcommand app:go-forward
nmap <C-i> :back
nmap <C-o> :forward
" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
exmap unfoldall obcommand editor:unfold-all
exmap foldall obcommand editor:fold-all
exmap foldless obcommand editor:fold-less
exmap foldmore obcommand editor:fold-more
nmap zJ :unfoldall
nmap zj :foldless
nmap zk :foldmore
nmap zK :foldall
nmap zl :togglefold

" Emulate Original gt and gT https://vimhelp.org/tabpage.txt.html#gt
exmap tabprev obcommand workspace:next-tab
exmap tabnext obcommand workspace:previous-tab
exmap tabundo obcommand workspace:undo-close-pane
exmap tabclos obcommand workspace:close
exmap tabcloa obcommand workspace:close-others
nmap <Space>th :tabnext
nmap <Space>tl :tabprev
nmap <Space>tk :tabundo
nmap <Space>tj :tabclos
nmap <Space><Space>tj :tabcloa

" spell check
exmap contextMenu obcommand editor:context-menu
nmap z= :contextMenu
vmap z= :contextMenu

exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets

"  exmap keyseqpalette obcommand obsidian-key-sequence-shortcut:open-key-sequence-palette
"  nmap <Space> :keyseqpalette

exmap focusRight obcommand editor:focus-right
exmap focusLeft obcommand editor:focus-left
exmap focusTop obcommand editor:focus-top
exmap focusBottom obcommand editor:focus-bottom
nmap <Space>l :focusRight
nmap <Space>h :focusLeft
nmap <Space>k :focusTop
nmap <Space>j :focusBottom


" spell check
exmap contextMenu obcommand editor:context-menu
nmap z= :contextMenu
vmap z= :contextMenu


"  exmap scrollToCenterTop70p jsfile .vim.js {scrollToCursor('center')}
"  nmap zz :scrollToCenterTop70p

" Moving to next/prev paragraph
"  nmap [ {
"  nmap ] }

"  exmap nextHeading jsfile .obsidian.markdown-helper.js {jumpHeading(true)}
"  exmap prevHeading jsfile .obsidian.markdown-helper.js {jumpHeading(false)}
exmap nextHeading jsfile .mdHelpers.js {jumpHeading(true)}
exmap prevHeading jsfile .mdHelpers.js {jumpHeading(false)}
"  nmap ]] :nextHeading
"  nmap [[ :prevHeading
nmap <Space><Space>o :nextHeading
nmap <Space><Space>i :prevHeading

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Pane Relief: https://github.com/pjeby/pane-relief
"  exmap tabnext obcommand pane-relief:go-next
"  nmap gt :tabnext
"  exmap tabprev obcommand pane-relief:go-prev
"  nmap gT :tabprev
"  nmap g\ :tabnext
" Zoom in/out

exmap zoomIn obcommand obsidian-zoom:zoom-in
exmap zoomOut obcommand obsidian-zoom:zoom-out
nmap zi :zoomIn
nmap zo :zoomOut

