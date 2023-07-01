-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local keymap = vim.keymap -- for conciseness

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
    -- keybind options
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- set keybinds
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- got to declaration
    keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- see definition and make edits in window
    keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- go to implementation
    keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- go to implementation
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
    keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
    keymap.set("n", "<leader>rn", ":IncRename ", opts) -- smart rename
    keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
    keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
    keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
    keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
    keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- configure pyright
lspconfig["pyright"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "python" },
})

-- configure dockerls
lspconfig["dockerls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "dockerfile" },
})

-- configure docker_compose_language_service
lspconfig["docker_compose_language_service"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "docker-compose" },
})

-- configure sqlls
-- lspconfig["sqlls"].setup({
--     capabilities = capabilities,
--     on_attach = on_attach,
--     filetypes = { "sql" },
-- })

-- configure yamlls
lspconfig["yamlls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "yaml", "yml" },
})

-- configure terraformls
lspconfig["terraformls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "terraform" },
})

-- configure tflint
lspconfig["tflint"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "terraform" },
})

-- configure jsonls
lspconfig["jsonls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "json" },
})

-- configure remark_ls
lspconfig["remark_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "markdown" },
})

-- configure bash
lspconfig["bashls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "sh" },
})

-- configure grammarly
lspconfig["grammarly"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "plaintext" },
})

-- configure lua server (with special settings)
lspconfig["lua_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = { -- custom settings for lua
        Lua = {
            -- make the language server recognize "vim" global
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                -- make language server aware of runtime files
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
})
