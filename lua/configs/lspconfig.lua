require("mason").setup()

local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"
local mason_lspconfig = require "mason-lspconfig"

mason_lspconfig.setup()
nvlsp.defaults() -- loads nvchad's defaults

mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = nvlsp.on_attach,
      on_init = nvlsp.on_init,
      capabilities = nvlsp.capabilities,
    }
  end,
}

-- require("nvchad.configs.lspconfig").defaults()
