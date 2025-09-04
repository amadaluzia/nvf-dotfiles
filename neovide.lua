if not vim.g.neovide then
        return
end

vim.o.guifont = "Monospace:h12"

local neovide_opts = {
        padding_top = 8,
        padding_bottom = 8,
        padding_left = 8,
        padding_right = 8,
        neovide_cursor_animation_length = 0.0,
        neovide_cursor_short_animation_length = 0.02,
        neovide_cursor_trail_size = 0.0,
        neovide_cursor_vfx_mode = "railgun",
}

for key, val in pairs(neovide_opts) do
        vim.g["neovide_" .. key] = val
end
