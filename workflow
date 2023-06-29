* *WORKFLOW*

** *Descriptors/Keybinds*
*** Git(Fugitive)
    - Fugitive is Git Wrapper, so everything you can do with git can also be done
    - s -> add/stage files  
    - cc -> commit
    - compare file to another branch -> :Gvdiffsplit <branch> | :Gvdiffsplit by it's self will compare to last commit
    - see all changes that were made -> :G difftool y  (remove by :tabo)
    - G log -> show all commits/history
    - G blame -> shows blame
    - dv diff split file (rebase?) 
    - dp put change to file  (rebase?)

*** Vim
**** View
     - View differences between buffers that are split ->  windo diffthis(enable) diffoff(disable)
     -- earlier 1f will got back to last write | open a vsplit buffer paste orginal content there and keep using ealier to go back | use diffthis with it
     - za to toggle folds | for code use :e to refresh, then folds will be enabled
**** Edits
     - Make same changes on multiple line -> (C-v) I(before cursor) A(after cursor) c(replace cursor) 
     - Search word that is yanked -> C-r " (uses yank buffer) | (.* for any pattern after)
     - Search and replaced yanked word ->  %s/C-r "/ replace /g or gi(case sensitive)
     - comment out mutliple one liners with visual block and I | for block just \** and \ when done
*** i3
    - resize mdoe -> modt+r followed by hjkl
    - change focus -> modt+hjkl 
    - move postioin of focus window -> mod+shift followed hjkl 
    - toogle fullscreen mode (minimize the rest) -> mod+f
    - move focus windo to a workspace -> mod+shift+<number workspace destination>
    - reload after changes to confit -> mod+shift+c 
*** Compile and Run
    - Java (Maven) - mvn exec:java -Dexec.mainClass=com.mycompany.App
