local M = {}

function M.setup()
  local state = (vim.fn.system("fcitx5-remote") or ""):sub(1, 1)

  local function read_state()
    state = (vim.fn.system("fcitx5-remote") or ""):sub(1, 1)
    return state
  end

  local group = vim.api.nvim_create_augroup("Fcitx5Bridge", { clear = true })

  vim.api.nvim_create_autocmd("InsertLeave", {
    group = group,
    pattern = "*",
    callback = function()
      read_state()
      vim.fn.system("fcitx5-remote -c")
    end,
  })

  vim.api.nvim_create_autocmd("InsertEnter", {
    group = group,
    pattern = "*",
    callback = function()
      if state == "2" then
        vim.fn.system("fcitx5-remote -o")
      end
    end,
  })
end

return M
