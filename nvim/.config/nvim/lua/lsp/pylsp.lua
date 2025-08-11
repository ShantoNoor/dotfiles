-- requirements
--
-- pip install python-lsp-server
-- pip install pylsp-mypy
-- pip install python-lsp-ruff
--

local venv_path = os.getenv('VIRTUAL_ENV')
local py_path = nil
-- decide which python executable to use for mypy
if venv_path ~= nil then
  py_path = venv_path .. "/bin/python"
else
  py_path = vim.g.python3_host_prog
end

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        -- formatter options
        black = { enabled = false },
        autopep8 = { enabled = false },
        yapf = { enabled = false },
        -- linter options
        pylint = { enabled = false, executable = "pylint" },
        ruff = { enabled = true, formatEnabled = true, extendSelect = { "I" }, },
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },
        -- type checker
        pylsp_mypy = {
          enabled = true,
          overrides = { "--python-executable", py_path, true },
          report_progress = true,
          live_mode = false
        },
        -- auto-completion options
        jedi_completion = { fuzzy = true },
        -- import sorting
        isort = { enabled = false },
      },
    },
  },
})

vim.lsp.enable("pylsp")
