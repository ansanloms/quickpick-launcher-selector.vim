function! quickpick#pickers#launcher#selector#open(bang) abort
  call quickpick#open({
  \ "items": s:get_items(a:bang),
  \ "on_accept": function("s:on_accept"),
  \ "key": "view",
  \})
endfunction

function! s:get_items(bang) abort
  let l:config_file = get(g:, "quickpick_launcher_file", "~/.quickpick-launcher")
  let l:config_file_list = glob(l:config_file . "-*", v:true, v:true)

  let l:list = map(copy(l:config_file_list), {
  \ v -> {
  \   "view": strpart(v:val, strlen(expand(l:config_file . "-"))),
  \   "profile": strpart(v:val, strlen(expand(l:config_file . "-"))),
  \   "bang": a:bang,
  \ }
  \})

  if empty(a:bang) || filereadable(expand(l:config_file))
    let l:list = [{
    \ "view": "(none)",
    \ "profile": "",
    \ "bang": a:bang,
    \}] + l:list
  endif

  return l:list
endfunction

function! s:on_accept(data, name) abort
  call quickpick#close()
  call quickpick#pickers#launcher#open(a:data["items"][0]["bang"], a:data["items"][0]["profile"])
endfunction
