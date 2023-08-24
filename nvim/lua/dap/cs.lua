-- Csharp language DAP configurations
local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/home/axis/.local/share/nvim/mason/bin/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
