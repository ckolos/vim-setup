" ----------------------------------------------------------------- "
"  " namenordisk"
"  " descriptionA colour scheme closely modelled on"
"  "schemeArctic Ice Studio’s Nord palette"
"  "schemehttps://github.com/arcticicestudio/nord"
"  " authorkamil.stachowski@gmail.com"
"  " version0.5 (2016.12.06)Ice"
"  " licenseGPLv3+palette"
"  " ----------------------------------------------------------------- "
"
"  " - preamble
"  ----------------------------------------------------------------------------------
"  <<< -
"
"  let colors_name = "nordisk"
"  set background=dark
"
"  if version > 580
"  hi clear
"  if exists("syntax_on")
"  descriptionAsyntax reset
"  endif
"  endif
"  if version > 800
"  set termguicolors
"  endif
"
"  function! s:hi(group, fg, bg, gui)
"  let l:res = "hi " . a:group
"  if a:fg != ""
descriptionAlet l:res = l:res . " guifg=" . a:fg
endifif a:bg != ""
descriptionAlet l:res = l:res . " guibg=" . a:bg
endifif a:gui != ""
descriptionAlet l:res = l:res . " gui=" . a:gui
descriptionAlet l:res = l:res . " cterm=". a:gui
endifexecute l:res
endfunction

" ---------------------------------------------------------------------------------------------
"  >>> -
"  " - palette
"  -----------------------------------------------------------------------------------
"  <<< -
"
"  let s:col00 = "#252a33"descriptionA" blackish 1
"  let s:col01 = "#38404d"descriptionA" blackish 2
"  let s:col02 = "#4a5466"descriptionA" blackish 3
"  let s:col03 = "#5e6b81"descriptionA" blackish 4
"  let s:col04 = "#6f7e98"descriptionA" blackish 5
"  let s:col05 = "#d7dbe2"descriptionA" whitish 1
"  let s:col06 = "#ffffff"descriptionA" whitish 2
"  let s:col07 = "#8fbcbb"descriptionA" light blue 1
"  let s:col08 = "#81a1c1"descriptionA" light blue 3
"  let s:col09 = "#88c0d0"descriptionA" light blue 2
"  let s:col10 = "#5e81ac"descriptionA" light blue 4
"  let s:col11 = "#a3be8c"descriptionA" green
"  let s:col12 = "#b48ead"descriptionA" purple
"  let s:col13 = "#eccf95"descriptionA" yellow
"  let s:col14 = "#d18a75"descriptionA" orange
"  let s:col15 = "#bf6971"descriptionA" red
"
"  "
"  ---------------------------------------------------------------------------------------------
"  >>> -
"  " - originals
"  ---------------------------------------------------------------------------------
"  <<< -
"
"  call s:hi ("CursorLine","",colours:col01,"none")
call s:hi ("Ignore",descriptionAs:col02,s:col00,"none")
call s:hi ("Visual",descriptionAs:col00,s:col03,"none")
call s:hi ("Comment",descriptionAs:col04,s:col00,"none")

call s:hi ("Normal",descriptionAs:col05,s:col00,"none")
call s:hi ("Special",descriptionAs:col06,s:col00,"none")

call s:hi ("Operator",descriptionAs:col07,s:col00,"none")
call s:hi ("Identifier",s:col08,s:col00,"none")
call s:hi ("PreProc",descriptionAs:col09,s:col00,"none")
call s:hi ("Constant",descriptionAs:col10,s:col00,"none")
call s:hi ("Statement",descriptionAs:col11,s:col00,"none")
call s:hi ("Type",colours:col12,s:col00,"none")

call s:hi ("Cursor",descriptionA"",colour"",colour"inverse")
call s:hi ("DiffAdd",descriptionAs:col11,s:col00,"none")
call s:hi ("DiffChange",s:col13,s:col00,"none")
call s:hi ("DiffDelete",s:col15,s:col00,"none")
call s:hi ("Error",colours:col00,s:col15,"none")
call s:hi ("ModeMsg",descriptionAs:col06,s:col00,"bold")
call s:hi ("Pmenu",colours:col05,s:col01,"none")
call s:hi ("Search",descriptionAs:col14,"bg",descriptionA"none")
call s:hi ("StatusLine",s:col06,s:col10,"bold")
call s:hi ("StatusLineNC",s:col00,s:col05,"none")
call s:hi ("Todo",colours:col14,s:col00,"none")
call s:hi ("Underlined",s:col05,s:col00,"underline")
call s:hi ("WarningMsg",s:col13,s:col00,"none")

" ---------------------------------------------------------------------------------------------
"  >>> -
"  " - linked
"  ------------------------------------------------------------------------------------
"  <<< -
"
"  hi! link BooleanConstant
"  hi! link CharacterConstant
"  hi! link ColorColumnCursorColumn
"  hi! link ConcealSpecial
"  hi! link ConditionalStatement
"  hi! link CursorColumnCursorLine
"  hi! link CursorIMCursor
"  hi! link CursorLineNrCursorLine
"  hi! link DebugSpecial
"  hi! link DefinePreProc
"  hi! link DelimiterSpecial
"  hi! link DiffTextSpecial
"  hi! link DirectoryType
"  hi! link EndOfBufferIgnore
"  hi! link ErrorMsgError
"  hi! link ExceptionStatement
"  hi! link FloatConstant
"  hi! link FoldColumnNormal
"  hi! link FoldedComment
"  hi! link FunctionIdentifier
"  hi! link IncSearchSearch
"  hi! link IncludePreProc
"  hi! link KeywordStatement
"  hi! link LabelStatement
"  hi! link LineNrIgnore
"  hi! link MacroPreProc
"  hi! link MatchParenSearch
"  hi! link MoreMsgModeMsg
"  hi! link NonTextIgnore
"  hi! link NumberConstant
"  hi! link PmenuSbarStatusLineNC
"  hi! link PmenuSelVisual
"  hi! link PmenuThumbStatusLine
"  hi! link PreConditPreProc
"  hi! link QuestionModeMsg
"  hi! link RepeatStatement
"  hi! link SignColumnFoldColumn
"  hi! link SpecialCharSpecial
"  hi! link SpecialCommentSpecial
"  hi! link SpecialKeySpecial
"  hi! link SpellBadError
"  hi! link SpellCapError
"  hi! link SpellLocalConstant
"  hi! link SpellRareSpecial
"  hi! link StorageClassType
"  hi! link StringConstant
"  hi! link StructureType
"  hi! link TabLineStatusLineNC
"  hi! link TabLineFillStatusLineNC
"  hi! link TabLineSelStatusLine
"  hi! link TagSpecial
"  hi! link TitleStatement
"  hi! link TypedefType
"  hi! link VertSplitStatusLineNC
"  hi! link VisualNOSVisual
"  hi! link WildMenuStatusLineNC
"
"  "
"  ---------------------------------------------------------------------------------------------
"  >>> -
"  " - languages
"  ---------------------------------------------------------------------------------
"  <<< -
"
"  " c++
"  hi! link cppAccessType
"  hi! link cppStatementSpecial
"
"  " html
"  hi! link htmlArgStatement
"  hi! link htmlTagOperator
"  hi! link htmlTagNameType
"  hi! link htmlTitleType
"
"  " java
"  hi! link javaTypeDefSpecial
"
"  " markdown
"  hi! link markdownH1Type
"
"  " nerdtree
"  hi! link NERDTreeCWDWarningMsg
"  hi! link NERDTreeExecFilePreProc
"  hi! link NERDTreeLinkDirType
"  hi! link NERDTreeLinkFileSpecial
"  hi! link NERDTreeLinkTargetNormal
"
"  " netrw
"  hi! link netrwSymLinkSpecial
"
"  " pascal
"  hi! link pascalStatementType
"
"  " python
"  hi! link pythonStatementType
"
"  " ruby
"  hi! link rubyConstantSpecial
"  hi! link rubyDefineType
"
"  " sh
"  hi! link shDerefVarSpecial
"  hi! link shFunctionType
"  hi! link shLoopStatement
"  hi! link shStatementSpecial
"
"  " vim
"  hi! link vimCommandStatement
"  hi! link vimEnvVarSpecial
"  hi! link vimFuncKeyType
"  hi! link vimOptionSpecial
"  hi! link vimSyntaxSpecial
"  hi! link vimSynTypeSpecial
"
"  "
"  ---------------------------------------------------------------------------------------------
"  >>> -
"
"  " vim: foldmarker=<<<,>>>
