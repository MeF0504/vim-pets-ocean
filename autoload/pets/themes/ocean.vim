scriptencoding utf-8

let s:pets = {
            \ 'shark': nr2char(0x1f988),
            \ 'whale': nr2char(0x1f40b),
            \ 'dolphin': nr2char(0x1f42c),
            \ 'fish': nr2char(0x1f41f),
            \ }
" 🦈, 🐋, 🐬, 🐟
let pets#themes#ocean#type = 'emoji'

function! pets#themes#ocean#get_pet(name) abort
    if !has_key(s:pets, a:name)
        echohl ErrorMsg
        echo printf('"%s" is not in this world.', a:name)
        echohl None
        return ""
    endif
    return s:pets[a:name]
endfunction

function! pets#themes#ocean#get_pet_names() abort
    return keys(s:pets)
endfunction

" :help pets-extension-ball_image
let g:pets#themes#ocean#ball_image = get(g:, "pets#themes#ocean#ball_image", nr2char(0x1f980))

function! pets#themes#ocean#get_bg() abort
    let bg = [
                \ "~ ",
                \ " ~",
            \ ]
    return bg
endfunction

function! pets#themes#ocean#bg_setting() abort
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

