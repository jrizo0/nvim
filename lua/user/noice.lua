local status_ok, noice = pcall(require, "noice")
if not status_ok then
  return
end

noice.setup({
  notify = {
    enabled = true,
    view = "notify",
  },
  lsp = {
    signature = {
      enabled = false
    },
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = true,
    command_palette = true,
    long_message_to_split = true,
    -- inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
  },
})
