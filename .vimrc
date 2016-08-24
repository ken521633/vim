"显示语法高亮
syntax enable
syntax on
"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
"显示行号
set number
"检测文件的类型
filetype on 
"记录历史的行数
set history=1000 
"背景使用黑色
set background=dark 
"下面两行在进行编写代码时，在格式对起上很有用；
"第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
"第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
"写上很有用
set autoindent
set smartindent
"第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set tabstop=4
set shiftwidth=4
"设置自动缩进
set ai!
"缩进的字符个数
set cindent shiftwidth=4 
"设置超过100字符自动换行
"set textwidth=100
"设置超过100列的字符带下划线
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>100v.\+', -1)
"syn match out80 /\%80v./ containedin=ALL
"hi out80 guifg=white guibg=red
"智能对齐方式
set smartindent 
"用空格代替tab
set expandtab 
"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"去除vim的GUI版本中的toolbar
set guioptions=T
"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=
"在编辑过程中，在右下角显示光标位置的状态行
set ruler
"默认情况下，寻找匹配是高亮度显示的，该设置关闭高亮显示
set nohls
"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
"时，别忘记回车
set incsearch
"修改一个文件后，自动进行备份，备份的文件名为原文件名加"~"后缀
if has("vms") 
	set nobackup
	else
		set backup
		endif
"设置折叠模式
set foldcolumn=4
"光标遇到折叠，折叠就打开
"set foldopen=all
"移开折叠时自动关闭折叠
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN
"依缩进折叠
"   manual  手工定义折叠
"   indent  更多的缩进表示更高级别的折叠
"   expr    用表达式来定义折叠
"   syntax  用语法高亮来定义折叠
"   diff    对没有更改的文本进行折叠
"   marker  对文中的标志折叠
set foldmethod=syntax
"启动时不要自动折叠代码
set foldlevel=100
"依标记折叠
set foldmethod=marker 
"高亮搜索的关键字
set hlsearch
 
"搜索忽略大小写
set ignorecase 
"平台判断
function! GetSystem()
 if (has("win32") || has("win95") || has("win64") || has("win16"))
   return "windows"
 elseif has("unix")
   return "linux"
 elseif has("mac")
   return "mac"
 endif
endfunction 
let g:LookupFile_MinPatLength = 2     "最少输入2个字符才开始查找 
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目 "快速查找（插件grep插件，需要grep软件）
"nnoremap <silent> <F3> :Grep<CR>
"给n映射一个快捷键，习惯上喜欢用F3
nmap <F3> n
"给n映射一个快捷键，习惯上喜欢用F3
nmap <S-F3> N

"netrw设置（自带目录树插件）
let g:netrw_winsize=30
let g:netrw_liststyle=1
let g:netrw_timefmt='%Y-%m-%d %H:%M:%S'
nmap <silent> <C-F7> :Sexplore!<cr> 


"Ctrl + F7打开project插件
nmap <silent> <A-F7>  :Project<CR> 


"F8单独切换打开taglist（taglist插件）
if GetSystem() == "windows"                    "设定Windows系统中ctags程序的位置
    let g:Tlist_Ctags_Cmd = $VIMRUNTIME.'\ctags'
else
    let g:Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
"let g:Tlist_Sort_Type = 'name'          "以名称顺序排序，默认以位置顺序(order)
let g:Tlist_Show_One_File = 1           "不同时显示多个文件的tag，只显示当前文件的
let g:Tlist_Exit_OnlyWindow = 1         "如果taglist窗口是最后一个窗口，则退出vim
lef g:Tlist_File_Fold_Auto_Close = 1    "当光标不在编辑文件里面的时候全部折叠
let g:Tlist_Use_Right_Window = 1        "在右侧窗口中显示taglist窗口
let g:Tlist_Enable_Fold_Column = 1      "显示折叠边栏
nmap <F8>  :TrinityToggleTagList<CR> 
