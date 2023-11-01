  { pkgs, ... }:
{
programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; 
      [ vim-airline
        supertab
        vim-fugitive
        vim-orgmode
        gruvbox
  ];
    settings = { ignorecase = true; };
    extraConfig = ''
       set syntax=scheme
       set mouse=a
       set path+=**
       set nocompatible
       set clipboard=unnamedplus
       set tabstop=4 softtabstop=4
       set shiftwidth=4
       set expandtab
       set smartindent
       set smartcase
       set undodir=~/.vim/undodir
       set undofile
       set incsearch
       set scrolloff=8
       set hidden
       set noswapfile
       set nobackup
       set updatetime=50
       set cmdheight=2
       set shortmess+=c
       set wildmenu
       set fillchars=vert:.
       set t_Co=16
       set linebreak

       imap <silent> <Down> <C-o>gj
       imap <silent> <Up> <C-o>gk
       nmap <silent> <Down> gj
       nmap <silent> <Up> gk

       augroup NO_CURSOR_MOVE_ON_FOCUS
       au!
       au FocusLost * let g:oldmouse=&mouse | set mouse=
       au FocusGained * if exists('g:oldmouse') | let &mouse=g:oldmouse | unlet g:oldmouse | endif
     augroup END

      if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
     endif

     highlight VertSplit cterm=NONE
     highlight Normal ctermbg=NONE
     highlight nonText ctermbg=NONE
     
      if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
     \| exe "normal! g'\"" | endif
     endif
     
    '';
  };
}
