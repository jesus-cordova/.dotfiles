local dap = require('dap')

require("dapui").setup()
require("nvim-dap-virtual-text").setup()

-- initially thought i need to setup like normal ide with terminal below 
dap.defaults.fallback.terminal_win_cmd = 'belowright 75vsplit enew'


--local dap, dapui = require("dap"), require("dapui")
--dap.listeners.after.event_initialized["dapui_config"] = function()
    --dapui.open()
--end
--dap.listeners.before.event_terminated["dapui_config"] = function()
    --dapui.close()
--end
--dap.listeners.before.event_exited["dapui_config"] = function()
    --dapui.close()
--end
