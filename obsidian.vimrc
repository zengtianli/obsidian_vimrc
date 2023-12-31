" Key unbindings
nunmap s
vunmap s
unmap <Space>
" ----------------------
" BASIC APPLICATION COMMANDS
" ----------------------
exmap reload obcommand app:reload
exmap back obcommand app:go-back
exmap forward obcommand app:go-forward
exmap zoomIn obcommand obsidian-zoom:zoom-in
exmap zoomOut obcommand obsidian-zoom:zoom-out

" ----------------------
" TAB AND WORKSPACE COMMANDS
" ----------------------
exmap Q :tabclose
exmap tabprev obcommand workspace:next-tab
exmap tabnext obcommand workspace:previous-tab
exmap tabundo obcommand workspace:undo-close-pane
exmap tabclos obcommand workspace:close
exmap movetwind obcommand workspace:move-to-new-window
exmap closewind obcommand workspace:close-window
exmap titlechange obcommand workspace:edit-file-title

" ----------------------
" NAVIGATION AND LINK COMMANDS
" ----------------------
exmap goParent obcommand breadcrumbs:jump-to-first-up
exmap openLink obcommand editor:follow-link
exmap openintab obcommand editor:open-link-in-new-leaf
exmap opensplit obcommand editor:open-link-in-new-split
exmap openinwid obcommand editor:open-link-in-new-window
exmap easymotion obcommand mrj-jump-to-link:activate-jump-to-anywhere
exmap easylink obcommand mrj-jump-to-link:activate-jump-to-link

" ----------------------
" EDITING AND FOLDING COMMANDS
" ----------------------
exmap togglefold obcommand editor:toggle-fold
exmap uf obcommand editor:unfold-all
exmap foldall obcommand editor:fold-all
exmap foldless obcommand editor:fold-less
exmap foldmore obcommand editor:fold-more
exmap contextMenu obcommand editor:context-menu

" ----------------------
" PLUGIN AND UTILITY COMMANDS
" ----------------------
exmap plugope obcommand hotkey-helper:open-plugins
exmap plugbro obcommand hotkey-helper:browse-plugins
exmap plugset obcommand hotkey-helper:open-settings
exmap plughtk obcommand hotkey-helper:open-hotkeys
exmap plugurl obcommand obsidian42-brat:BRAT-openGitHubZRepository
exmap qkadd_date obcommand quickadd:choice:5480c3bd-c30c-4809-ab15-53359aa8b307

" ----------------------
" CODE BLOCK COMMANDS
" ----------------------
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

" ----------------------
" SURROUND COMMANDS
" ----------------------
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" ----------------------
" FOCUS COMMANDS
" ----------------------
exmap focusRight obcommand editor:focus-right
exmap focusLeft obcommand editor:focus-left
exmap focusTop obcommand editor:focus-top
exmap focusBottom obcommand editor:focus-bottom
exmap nextHeading jsfile .mdHelpers.js {jumpHeading(true)}
exmap prevHeading jsfile .mdHelpers.js {jumpHeading(false)}

" ----------------------
" BASIC COMMANDS
" ----------------------
nmap <Space>rc :reload
nmap U <C-r>
nmap S :w<CR>
nmap Q :tabclos
nmap tc :titlechange

" ----------------------
" MOVEMENT AND FOCUS
" ----------------------
nmap <C-i> :back
nmap <C-o> :forward
nmap <Space>l :focusRight
nmap <Space>h :focusLeft
nmap <Space>k :focusTop
nmap <Space>j :focusBottom
nmap } :nextHeading
nmap { :prevHeading
nmap H ^
nmap L $
nmap ; :

" ----------------------
" TAB AND FOLDING COMMANDS
" ----------------------
nmap za :uf
nmap <Space>o :togglefold
nmap <Space>O :foldall
nmap <Space>th :tabnext
nmap <Space>tl :tabprev

" ----------------------
" EDITING AND REGEX
" ----------------------
nmap <Space>rb :%s/^\s*$\n//g
nmap <Space>rl ::%s/\s*$//g

" ----------------------
" PLUGIN AND SPECIAL COMMANDS
" ----------------------
nmap <Space>ol :openLink
nmap <Space>ot :openintab
nmap <Space>os :opensplit
nmap <Space>ow :openinwid
nmap <Space>po :plugope
nmap <Space>pb :plugbro
nmap <Space>ps :plugset
nmap <Space>ph :plughtk
nmap <Space>pu :plugurl
nmap gu :goParent
nmap gw :easymotion
nmap gl :easylink
nmap z= :contextMenu
nmap <Space>td :qkadd_date

" ----------------------
" CODE BLOCK COMMANDS (NORMAL MODE)
" ----------------------
nmap <Space>cad :codeblock_adm
nmap <Space>cpy :codeblock1
nmap <Space>cjs :codeblock2
nmap <Space>csh :codeblock3
nmap <Space>cvm :codeblock4
nmap <Space>cda :codeblock5

" ----------------------
" CODE BLOCK COMMANDS (VISUAL MODE)
" ----------------------
vmap <Space>cad :codeblock_select_adm
vmap <Space>cpy :codeblock_select1
vmap <Space>cjs :codeblock_select2
vmap <Space>csh :codeblock_select3
vmap <Space>cvm :codeblock_select4
vmap <Space>cda :codeblock_select5
vmap z= :contextMenu

" ----------------------
" SURROUND COMMANDS
" ----------------------
nmap [[ :surround_wiki
nmap s" :surround_double_quotes
nmap s' :surround_single_quotes
nmap sb :surround_brackets
nmap sn :surround_square_brackets
nmap sm :surround_curly_brackets

" ----------------------
" YANK TO SYSTEM CLIPBOARD
" ----------------------
vmap Y "+y
