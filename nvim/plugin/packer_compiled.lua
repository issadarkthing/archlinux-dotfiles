-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/terra/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?.lua;/home/terra/.cache/nvim/packer_hererocks/2.1.1702233742/share/lua/5.1/?/init.lua;/home/terra/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?.lua;/home/terra/.cache/nvim/packer_hererocks/2.1.1702233742/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/terra/.cache/nvim/packer_hererocks/2.1.1702233742/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  coq_nvim = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugin_config.lazygit\frequire\0" },
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugin_config.mason\frequire\0" },
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugin_config.telescope\frequire\0" },
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tsc.nvim"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/tsc.nvim",
    url = "https://github.com/issadarkthing/tsc.nvim"
  },
  ["typescript-tools.nvim"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/typescript-tools.nvim",
    url = "https://github.com/pmizio/typescript-tools.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vim-ragtag",
    url = "https://github.com/tpope/vim-ragtag"
  },
  ["vim-rex"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vim-rex",
    url = "https://github.com/issadarkthing/vim-rex"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimwiki = {
    loaded = true,
    path = "/home/terra/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugin_config.lazygit\frequire\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugin_config.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugin_config.mason\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-prettier'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'vim-prettier'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], false)
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], true)
vim.cmd [[source /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]]
time([[Sourcing ftdetect script at: /home/terra/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
