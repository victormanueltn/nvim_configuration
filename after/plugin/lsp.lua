local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
	'rust_analyzer',
})


local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<Tab>"] = cmp.mapping(function(fallback)
      -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
	if not entry then
	  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
	else
	  cmp.confirm()
	end
      else
        fallback()
      end
    end, {"i","s","c",}),
})

lsp.on_attach(function(client, bufnr)
  local opts = { noremap = true, buffer = bufnr}
  vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, opts)
  -- more keybindings...
end)

local config = {
    -- enable/disable virtual text
    virtual_text = true,
    virtual_lines = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = true,
}

vim.diagnostic.config(config)

lsp.setup_nvim_cmp({
  mapping = cmp_mappings

})

lsp.setup()
