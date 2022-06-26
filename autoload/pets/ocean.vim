scriptencoding utf-8

let s:pets = {
            \ 'shark': "🦈",
            \ 'whale': "🐋",
            \ 'dolphin': "🐬",
            \ 'fish': "🐟",
            \ }
function! pets#ocean#get_pet(name) abort
    if !has_key(s:pets, a:name)
        echohl ErrorMsg
        echo printf('"%s" is not in this world.', a:name)
        echohl None
        return ""
    endif
    return s:pets[a:name]
endfunction

function! pets#ocean#get_pet_names() abort
    return keys(s:pets)
endfunction

function! pets#ocean#get_bg() abort
    let bg = [
                \ "~ ",
                \ " ~",
            \ ]
    return bg
endfunction

function! pets#ocean#bg_setting() abort
    highlight PetsGardenBG1 ctermfg=None ctermbg=20 guifg=NONE guibg=Blue3
    highlight PetsGardenBG2 ctermfg=None ctermbg=21 guifg=NONE guibg=Blue1
    for l in range(1, line('$'))
        if l%2
            call matchaddpos('PetsGardenBG1', [l])
        else
            call matchaddpos('PetsGardenBG2', [l])
        endif
    endfor
endfunction

