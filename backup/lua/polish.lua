-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.keymap.set("i", "<C-l>", function()
  if vim.g.ai_accept and vim.g.ai_accept() then
    return ""
  end
  return "<C-l>"
end, { expr = true, silent = true, desc = "Accept Copilot suggestion" })

