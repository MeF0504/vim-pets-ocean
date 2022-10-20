# vim-pets-ocean

Sample of [vim-pets](https://github.com/MeF0504/vim-pets) Extension pack.  
You can add your own world's pets as follows.

Required files are
- `autoload/pets/{world's name}.vim`  
This file contains follow functions.
    - function `pets#{world's name}#get_pet()`
        - input: pet's name
        - return: pet's image character
    - function `pets#{world's name}#get_pet_names()`
        - input: none
        - return: list of available pet names.
    - function `pets#{world's name}#get_bg()`
        - input: none
        - return: list of string of background image.
        length of each string should be the same.
    - function `pets#{world's name}#bg_setting()` (optional)
        - input: none
        - return: none  
        This function is called after creating the garden.
        you can set highlight colors and so on using this function.
    - function `pets#{world's name}#config()` (optional)
        - input: none
        - return: dictionary  
        This function is used to overwrite the optional configurations.  
        The keys of this dictionary are the option name
        shown in the [vim-pets README](https://github.com/MeF0504/vim-pets/blob/main/README.md),  
        `pets_lifetime_enable`,
        `pets_birth_enable`,
        `pets_garden_width`,
        `pets_garden_height`,
        `pets_garden_pos`,  
        and they are overwritten by the values of the dictionary.

- `plugin/pets-{world's name}.vim`  
In this file, you need to add your world's name in `g:pets_worlds`.
    ```vim
    let g:pets_worlds = get(g:, 'pets_worlds', [])
    call add(g:pets_worlds, 'ocean')
    ```

## Requirements

- [vim-pets](https://github.com/MeF0504/vim-pets)

## Installation

For [vim-plug](https://github.com/junegunn/vim-plug) plugin manager:

```
Plug 'MeF0504/vim-pets'
Plug 'MeF0504/vim-pets-ocean'
```

## License
[MIT](https://github.com/MeF0504/vim-pets-ocean/blob/main/LICENSE)

## Author
[MeF0504](https://github.com/MeF0504)
