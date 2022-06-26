" pets-ocean
" Version: 0.0.1
" Author: MeF
" License: MIT

if exists('g:loaded_pets_ocean')
  finish
endif
let g:loaded_pets_ocean = 1

let g:pets_worlds = get(g:, 'pets_worlds', [])
call add(g:pets_worlds, 'ocean')

