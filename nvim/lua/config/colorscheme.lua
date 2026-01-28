-- lua/config/colorscheme.lua
-- カラースキーム・ハイライト設定

-- termguicolors
vim.opt.termguicolors = true
vim.opt.background = "light"

-- カスタムカラースキーム (元の.gvimrcから移植)
local function setup_custom_colorscheme()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- UI
  vim.api.nvim_set_hl(0, "Normal", { fg = "#2F2F3A", bg = "#F7F7FB" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#7A7A96", bg = "#ECECF3" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#1F1F28", bg = "#ECECF3", bold = true })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "#E8E0F5" })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = "#D8D1F0", bg = "#ECECF3" })
  vim.api.nvim_set_hl(0, "WinSeparator", { link = "Comment" })

  vim.api.nvim_set_hl(0, "StatusLine", { fg = "#1F1F28", bg = "#D8D1F0" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#7A7A96", bg = "#ECECF3" })
  vim.api.nvim_set_hl(0, "StatusLineFilename", { fg = "#87afff" })

  vim.api.nvim_set_hl(0, "Visual", { bg = "#D8D1F0" })
  vim.api.nvim_set_hl(0, "Search", { fg = "#1F1F28", bg = "#C4BDD8" })

  -- Base Syntax
  vim.api.nvim_set_hl(0, "Comment", { fg = "#5A5A72", italic = true })
  vim.api.nvim_set_hl(0, "Constant", { fg = "#8A7FC4" })
  vim.api.nvim_set_hl(0, "String", { fg = "#9A91CC" })
  vim.api.nvim_set_hl(0, "Number", { fg = "#8A7FC4" })

  vim.api.nvim_set_hl(0, "Identifier", { fg = "#2F2F3A" })
  vim.api.nvim_set_hl(0, "Function", { fg = "#1F1F28", bold = true })

  vim.api.nvim_set_hl(0, "Keyword", { fg = "#7A70B4", bold = true })
  vim.api.nvim_set_hl(0, "Statement", { fg = "#1F1F28", bold = true })
  vim.api.nvim_set_hl(0, "Type", { fg = "#7A9BC4" })

  vim.api.nvim_set_hl(0, "Conditional", { fg = "#1F1F28", bold = true })
  vim.api.nvim_set_hl(0, "Repeat", { fg = "#1F1F28", bold = true })

  -- Diagnostics
  vim.api.nvim_set_hl(0, "Error", { fg = "#F7F7FB", bg = "#E8B7C5" })
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#D4879C" })
  vim.api.nvim_set_hl(0, "Todo", { fg = "#1F1F28", bg = "#E8B7C5", bold = true })

  -- PHP specific
  vim.api.nvim_set_hl(0, "phpStructure", { fg = "#7A70B4", bold = true })
  vim.api.nvim_set_hl(0, "phpClass", { fg = "#7A70B4" })
  vim.api.nvim_set_hl(0, "phpType", { fg = "#8A7FC4" })
  vim.api.nvim_set_hl(0, "phpIdentifier", { fg = "#2F2F3A" })
  vim.api.nvim_set_hl(0, "phpVarSelector", { fg = "#2F2F3A" })
  vim.api.nvim_set_hl(0, "phpMethodsVar", { fg = "#1F1F28" })
  vim.api.nvim_set_hl(0, "phpConditional", { fg = "#1F1F28", bold = true })
  vim.api.nvim_set_hl(0, "phpRepeat", { fg = "#1F1F28", bold = true })
  vim.api.nvim_set_hl(0, "phpStatement", { fg = "#1F1F28", bold = true })

  -- Additional
  vim.api.nvim_set_hl(0, "Special", { fg = "#7A70B4" })
  vim.api.nvim_set_hl(0, "Delimiter", { fg = "#5A5A72" })
  vim.api.nvim_set_hl(0, "Operator", { fg = "#5A5A72" })
  vim.api.nvim_set_hl(0, "PreProc", { fg = "#7A70B4" })

  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu", { fg = "#2F2F3A", bg = "#ECECF3" })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#1F1F28", bg = "#D8D1F0", bold = true })

  -- Diff
  vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#24598F", bg = "#EAF2FF" })
  vim.api.nvim_set_hl(0, "DiffDelete", { fg = "#9C3E3E", bg = "#FBE9EB" })
  vim.api.nvim_set_hl(0, "DiffChange", { fg = "#24598F", bg = "#EAF2FF" })
  vim.api.nvim_set_hl(0, "DiffText", { fg = "#1F1F28", bg = "#C7DBFF", bold = true })

  vim.api.nvim_set_hl(0, "diffAdded", { link = "DiffAdd" })
  vim.api.nvim_set_hl(0, "diffRemoved", { link = "DiffDelete" })
  vim.api.nvim_set_hl(0, "diffChanged", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "diffFile", { fg = "#7A70B4" })
  vim.api.nvim_set_hl(0, "diffNewFile", { fg = "#2D5D2D" })
  vim.api.nvim_set_hl(0, "diffLine", { fg = "#7A7A96" })

  -- GitSigns
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#2D5D2D" })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#7A7A96" })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#9C3E3E" })

  -- Matching parenthesis
  vim.api.nvim_set_hl(0, "MatchParen", { bg = "#D8D1F0", bold = true })
end

-- カラースキーム選択用の関数
local function set_colorscheme(name)
  if name == "custom" then
    setup_custom_colorscheme()
  else
    local ok, _ = pcall(vim.cmd, "colorscheme " .. name)
    if not ok then
      vim.notify("Colorscheme " .. name .. " not found!", vim.log.levels.WARN)
    end
  end
end

-- デフォルトでカスタムカラースキームを使用
-- 他のカラースキームに変更したい場合は以下のように:
-- set_colorscheme("tokyonight")
-- set_colorscheme("gruvbox")
-- set_colorscheme("catppuccin")
set_colorscheme("custom")

-- カラースキーム切り替えコマンド
vim.api.nvim_create_user_command("ColorSchemeCustom", function()
  set_colorscheme("custom")
end, {})

vim.api.nvim_create_user_command("ColorSchemeSelect", function()
  local schemes = { "custom", "tokyonight", "gruvbox", "catppuccin", "nord", "nightfly", "moonfly", "kanagawa", "iceberg", "sonokai" }
  vim.ui.select(schemes, { prompt = "Select colorscheme:" }, function(choice)
    if choice then
      set_colorscheme(choice)
    end
  end)
end, {})

return {
  set_colorscheme = set_colorscheme,
  setup_custom_colorscheme = setup_custom_colorscheme,
}
