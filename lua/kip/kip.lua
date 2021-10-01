

local M = {}

M.test = function()
    print("hello world")
end

M.find_references = function()
    local file_name = vim.call("expand", "%:t")
    print(file_name)
    print(require('telescope.builtin').grep_string({hidden=true, search=file_name}))
    -- Does not work, it opens the file where it has found the matching string
    local ref = vim.api.nvim_command("grep " .. file_name .. " *")
    print(type(ref))

end

return M
