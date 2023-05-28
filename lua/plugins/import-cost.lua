-- return {}
-- if vim.fn.has("windows") == 1 then
--   buildStr = 'pwsh install.ps1 yarn'
-- else
--   buildStr = 'sh install.sh pnpm'
-- end

-- return {
--   'barrett-ruth/import-cost.nvim',
--   build = 'sh install.sh pnpm',
--   config = true
-- }

return {
  'yardnsm/vim-import-cost',
  build = 'pnpm install'
}
