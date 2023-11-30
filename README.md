# language-m-dgfip

VSCode and vim syntax highlighting for DGFiP's M language. Useful for browsing the code of https://framagit.org/dgfip/ir-calcul.

 ## VSCode

 Install using the option "Install from VSIX..." from the extension toolbar. The rest of the repository is simply here to give easier access to the files of the extension.

 ## vim

 (For Unix-based systems)
 Create a directory ~/.vim/syntax and move the file mdgfip.vim there
 Create a directory ~/.vim/ftdetect and create a file mdgfip.vim there containing a single line:
`au BufRead,BufNewFile *.m set filetype=mdgfip`