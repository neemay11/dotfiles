" Go mandates tab use
call Tabs(4)

" use ALE with gofmt to autofix go code
let b:ale_fixers = ['gofmt']
let b:ale_fix_on_save = 1
