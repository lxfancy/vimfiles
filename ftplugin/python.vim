"-----------------------------------------------------------------------------
" 执行程序
"-----------------------------------------------------------------------------

if has("gui_running")
	map <F9> :silent !x-terminal-emulator -x bash -c "python %; read -s -n 1 -p 'Press any key to exit...'" &<CR>
else
	map <F9> :!python %<CR>
endif

"-----------------------------------------------------------------------------
" * 缩写
"-----------------------------------------------------------------------------

" python shell
iabbrev pysh import code; code.interact(locals=locals())
"
" python 调试器
iabbrev pybk import pdb; pdb.set_trace()

" ipython shell
iabbrev ipysh from IPython import embed; embed()

" ipython 调试器
iabbrev ipybk import ipdb; ipdb.set_trace()
