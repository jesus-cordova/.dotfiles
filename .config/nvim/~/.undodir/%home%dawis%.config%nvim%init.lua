Vim�UnDo� �$�)9�)��g����7z�<Q�teh��q�                     F       F   F   F    d#̧    _�                     	        ����                                                                                                                                                                                                                                                                                                                                                             d�h     �      
         3vim.cmd([[autocmd BufWritePost *.tex !pdflatex %]])5��                          B                     5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             d�k     �   	             �   
          5��    	                  +   x              /      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        d�m    �                �The simplest input can be retrieved using io.read(). This will read a single line from the standard input (usually the keyboard, but can be redirected e.g. from file).       You can use it like this:5��                          z      �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        d�    �                &io.write('Hello, what is your name? ')   local name = io.read()   +io.write('Nice to meet you, ', name, '!\n')5��                          {      j               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        d��    �             5��                          z                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�     �             �             5��                          4                      5�_�      
                     ����                                                                                                                                                                                                                                                                                                                                                             d�    �               require ("dawis.keymaps")5��                        D                     5�_�                
           ����                                                                                                                                                                                                                                                                                                                                                             d�     �             �             5��                          �              @       5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             d�     �                 5��                          �                     5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             d�     �               ?vim.o.background =  require ("dawis.utils").retreiveColorScheme5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�%     �               require ("dawis.utils")5��                       
   4               
       �                        ;                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�2     �               $loca utils = require ("dawis.utils")5��                         8                      5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             d�L    �               'vim.o.background =  retreiveColorScheme5��                         �                     �                        �                    �                        �                    5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             d�s     �               -vim.o.background =  utils.retreiveColorScheme5��       -                  �                     �       -                  �                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             d�u    �               -vim.o.background =  utils.retreiveColorScheme5��       -                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             d�     �                /vim.o.background =  utils.retreiveColorScheme()5��                          �      0               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�     �               %local utils = require ("dawis.utils")5��                         @                      �                         ?                      �       
                  >                      �       	                  =                      �                         <                      �                          4                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�    �                require ("dawis.utils")5��                          4                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#ǭ     �             5��                          f                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#Ǯ     �                �             5��                       !   f               !       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#Ǳ     �               !hi statusline guibg=NONE gui=NONE5��                          f                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �               'vim.cmhi statusline guibg=NONE gui=NONE5��                         l                      5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             d#��     �               )vim.cmd(hi statusline guibg=NONE gui=NONE5��       )                  �                      5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             d#��     �               *vim.cmd(hi statusline guibg=NONE gui=NONE)5��       )                  �                      �       )                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �               +vim.cmd(hi statusline guibg=NONE gui=NONE')5��                         n                      �                        n                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �                �             5��                          f                      �                       	   f               	       �                        n                     �                        z                     �                        �                     �                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �               function transparentStatusLine5��                         �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d#��     �             5��                          �                      �                          �                      5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             d#��     �                   5��                         �                      5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             d#��     �             �                   {}5��                        �                      �                          �                      �                         �                     �                          �                      5�_�   !   #           "   	       ����                                                                                                                                                                                                                                                                                                                                                             d#��     �      	          ,vim.cmd('hi statusline guibg=NONE gui=NONE')5��                          �       -               5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �      	       �             5��                          �               -       5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �                 5��                          �                      5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             d#��     �               ,vim.cmd('hi statusline guibg=NONE gui=NONE')    �      	          �      	       5��                          �                      �       ,                  �                      5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                             d#�     �               ,vim.cmd('hi statusline guibg=NONE gui=NONE')5��                          �                      5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                               
          ,       v   ,    d#�     �                   {�             5��                      #   �               #       5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                               
          ,       v   ,    d#�     �               (    {'hi statusline guibg=NONE gui=NONE'5��                        �                      �                         �                     5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                               
          ,       v   ,    d#�#     �               4        local jjj'hi statusline guibg=NONE gui=NONE'5��                        �                     �                        �                     �                        �                     5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                V       d#�,     �                 function transparentStatusLine()       {5��                          f       '               5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                V       d#�-     �                    }5��                          �                      5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                V       d#�/     �                       �             5��                          �               	       �                         �                      �                        �               	       �                          �                      �                         �                      �                         �                      �                        �                     �                        �               	       �                          �                      �                         �                      �                         �                      �                         �                      5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                V       d#�9     �                       vim.cmd5��                         �                      5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                V       d#�:     �                       vim.cmd()5��                         �                      �                        �                     �                        �                     �                        �                     �                        �                     5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                V       d#�=     �                       vim.cmd(transparentCmd)5��                         �                      5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                V       d#�>     �                        vim.cmd(transparentCmd):5��                         �                      5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                V       d#�@     �                       vim.cmd(transparentCmd)5��                         �                      5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                V       d#�A   	 �                  �                  require ("dawis.options")   require ("dawis.keymaps")   require ("dawis.utils")   require ("dawis.plugins")   C        local transparentCmd  = 'hi statusline guibg=NONE gui=NONE'            vim.cmd(transparentCmd);   .--vim.cmd('hi statusline guibg=NONE gui=NONE')   7--vim.cmd("let g:gruvbox_material_background = 'soft'")   )--vim.cmd("colorscheme gruvbox-material")   5--vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")   8--vim.o.background = "dark" -- or "light" for light mode   "--vim.cmd([[colorscheme gruvbox]])   5--vim.cmd([[autocmd BufWritePost *.tex !pdflatex %]])               --yesser            5��                                  2            �                                               5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                V       d#�s   
 �               :local transparentCmd = 'hi statusline guibg=NONE gui=NONE'5��                         z                      5�_�   3   5           4           ����                                                                                                                                                                                                                                                                                                                                                V       d#ȼ    �               ;local transparentCmd = ':hi statusline guibg=NONE gui=NONE'5��                          b                      5�_�   4   6           5          ����                                                                                                                                                                                                                                                                                                                                                v       d#��     �               vim.cmd(transparentCmd);�             5��                     %   �              %       5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                v       d#��    �               6 transparentCmd = ':hi statusline guibg=NONE gui=NONE'5��                         c                      5�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                v       d#�     �               /vim.cmd( ':hi statusline guibg=NONE gui=NONE');5��                         �                      5�_�   7   9           8      	    ����                                                                                                                                                                                                                                                                                                                                                v       d#�    �               .vim.cmd(':hi statusline guibg=NONE gui=NONE');5��       	                  �                      5�_�   8   :           9      	    ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#ɻ    �               -vim.cmd('hi statusline guibg=NONE gui=NONE');�             5��       	       !          �       !              5�_�   9   ;           :      %    ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#�    �               &vim.cmd('highlight clear StatusLine');5��       %                  �                      5�_�   :   <           ;      $    ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#�d     �               %vim.cmd('highlight clear StatusLine')5��       #                 �                     5�_�   ;   ?           <      	    ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#�i    �               %vim.cmd('highlight clear StatusLine")5��                        �                     5�_�   <   @   =       ?      	    ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#��    �               %vim.cmd("highlight clear StatusLine")5��       	                  �                      5�_�   ?   B           @      	    ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̀    �               &vim.cmd(":highlight clear StatusLine")5��       	                  �                      5�_�   @   C   A       B      	    ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̏     �              5��                                                  5�_�   B   D           C           ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̏     �             �             5��                                         &       5�_�   C   E           D           ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̐     �                  5��                                                  5�_�   D   F           E           ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̓    �               %vim.cmd("highlight clear StatusLine")5��                          �                      5�_�   E               F          ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̦    �                 %vim.cmd("highlight clear StatusLine")5��                                   &               5�_�   @           B   A      	    ����                                                                                                                                                                                                                                                                                                                               	          #       v   #    d#̍     �             �               %vim.cmd("highlight clear StatusLine")5��                                         &       5�_�   <   >       ?   =          ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#ʆ    �               ,vim.cmd("highlight Normal clear StatusLine")5��                         �                      �                        �                     5�_�   =               >          ����                                                                                                                                                                                                                                                                                                                               	          )       v   )    d#ʊ     �               +vim.cmd("highlight Norma clear StatusLine")5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�9     �               vim.o.background =  utils.re5��                        �                    �                        �                    �                         �                     �                          �                     �                          �                     �                         �                     �                         �                     �                        �                    �                         �                     5�_�      	       
              ����                                                                                                                                                                                                                                                                                                                                                             d��     �             �               9vim.o.background =  require ("utils").retreiveColorScheme5��                          �              :       5�_�                  	           ����                                                                                                                                                                                                                                                                                                                                                             d��     �              5��                          �                     5��