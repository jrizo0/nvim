local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

-- ╭──────────────────────────────────────────────────────────╮
-- │ Configurations                                           │
-- ╰──────────────────────────────────────────────────────────╯
dap.configurations.javascript = {
  {
    name = "node2",
    type = "node2",
    request = "launch",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
  },
  {
    name = "chrome",
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}",
  },
}

dap.configurations.typescriptreact = {
  {
    type = "chrome",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    port = 9223,
    webRoot = "${workspaceFolder}",
  },
  {
    name = "React Native",
    type = "node2",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
    port = 35000,
  }
}

-- setup adapters
-- require('dap-vscode-js').setup({
  -- debugger_path = vim.fn.stdpath('data') .. '/site/pack/packer/opt/vscode-js-debug/',
  -- debugger_path = vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js",
  -- debugger_path = 'C:\\Users\\Julian Rizo\\AppData\\Local\\nvim-data\\mason\\packages\\js-debug-adapter\\',
  -- debugger_path = 'C:\\Users\\Julian Rizo\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vscode-js-debug\\src\\vsDebugServer.ts',
  -- debugger_cmd = { 'pwa-node' },
  -- adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
  -- adapters = { 'pwa-node' },
-- })


-- language config
-- for _, language in ipairs({ 'typescript', 'javascript' }) do
--   dap.configurations[language] = {
--     {
--       type = "pwa-node",
--       request = "launch",
--       name = "Debug Current Test File",
--       autoAttachChildProcesses = true,
--       skipFiles = { "<node_internals>/**", "**/node_modules/**" },
--       program = "${workspaceFolder}/node_modules/vitest/vitest.mjs",
--       runtimeExecutable = "node",
--       rootPath = "${workspaceFolder}",
--       cwd = "${workspaceFolder}",
--       args = { "run", "${relativeFile}" },
--       smartStep = true,
--       console = "integratedTerminal",
--       internalConsoleOptions = "neverOpen",
--     },
--     {
--       type = "pwa-node",
--       request = "launch",
--       name = "Launch file",
--       program = "${file}",
--       cwd = "${workspaceFolder}",
--     },
--     {
--       type = "pwa-node",
--       request = "attach",
--       name = "Attach",
--       processId = require 'dap.utils'.pick_process,
--       cwd = "${workspaceFolder}",
--     }
    -- {
    --   name = 'Launch node',
    --   type = 'node2',
    --   request = 'launch',
    --   program = '${file}',
    --   rootPath = '${workspaceFolder}',
    --   cwd = '${workspaceFolder}',
    --   sourceMaps = true,
    --   skipFiles = { '<node_internals>/**' },
    --   protocol = 'inspector',
    --   console = 'integratedTerminal',
    -- },
    -- {
    --   name = 'Launch chrome',
    --   type = "chrome",
    --   request = "attach",
    --   program = "${file}",
    --   cwd = vim.fn.getcwd(),
    --   sourceMaps = true,
    --   protocol = "inspector",
    --   port = 9222,
    --   webRoot = "${workspaceFolder}",
    -- },
  -- }
-- end
