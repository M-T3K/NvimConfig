return {
  'M-T3K/lackluster.nvim',
  lazy = false,
  priority = 1000,
  opts = function()
    local tweak_color = {
      lack = '#B0F5E6',
      luster = '#E6D47E',
      orange = 'default',
      yellow = '#fffb00',
      green = '#2ED30D',
      blue = '#00DADA',
      red = 'default',
      default_text_color = '#F9FAF0',

      black = '#000000',
      gray1 = '#080808',
      gray2 = '#191919',
      gray3 = '#2a2a2a',
      gray4 = '#444444',
      gray5 = '#FFFFFF',
      gray6 = '#aaaaaa',
      gray7 = '#cccccc',
      gray8 = '#DDDDDD',
      gray9 = '#D70000',

      -- black = "#000000",-- highlight text color
      -- gray1 = "#080808", -- color del cuadrado en modo visual
      -- gray2 = "#191919", -- line highlight
      -- gray3 = "#2a2a2a", -- ni idea
      -- gray4 = "#444444", -- los numeros de linea
      -- gray5 = "#555555",  -- la linea entre los corchetes que marca el current scope, no me gusta y lo preferiria abandonar
      -- gray6 = "#7a7a7a", -- simbolos, parentesis, iguales, etc
      -- gray7 = "#aaaaaa",  -- fields, properties, structs, etc
      -- gray8 = "#cccccc",  -- variables, parameters, cursor?????wtf
      -- gray9 = "#DDDDDD",  -- el nombre del modo dentro de la cajita abajo a la izquierda
    }
    return {
      -- tweak_color = tweak_color,
      tweak_syntax = {
        string = tweak_color.blue,
        string_escape = tweak_color.blue,
        comment = tweak_color.green,
        builtin = tweak_color.default_text_color, -- builtin modules and functions
        type = tweak_color.lack,
        keyword = tweak_color.luster,
        keyword_return = tweak_color.luster,
        keyword_exception = tweak_color.luster,
        tag = tweak_color.default_text_color,
      },
      tweak_background = {
        -- normal = '#001920',
        -- normal = tweak_color.black,
      },
    }
  end,
  init = function()
    vim.cmd.colorscheme 'lackluster'
    -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
    -- vim.cmd.colorscheme("lackluster-mint")

    vim.api.nvim_set_hl(0, 'Cursor', {
      bg = '#2ED30D',
      fg = '#000000', -- the character under the cursor
    })
  end,
}
