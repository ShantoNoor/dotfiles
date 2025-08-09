-- require luasnip at the top of your file
local ls = require("luasnip")

-- A shorter alias for the snippet parser function
local parse = ls.parser.parse_snippet

--[[
  Scans a directory for files. This function is mostly unchanged.
]]
local function list_snip_files(dir)
  -- Use pcall to safely handle cases where the directory doesn't exist
  local ok, handle = pcall(vim.loop.fs_scandir, dir)
  if not ok or not handle then
    vim.notify("Snippet directory not found: " .. tostring(dir), vim.log.levels.WARN)
    return {}
  end

  local files = {}
  while true do
    local name, type = vim.loop.fs_scandir_next(handle)
    if not name then
      break
    end
    -- Find files with the .snip.<extension> format
    if name:match("%.snip%.") then
      table.insert(files, dir .. "/" .. name)
    end
  end
  return files
end

--[[
  Loads all snippets from your custom directory.
  This function is designed to be called once during your Neovim startup.
]]
local function load_custom_snippets()
  -- Make sure you have `vim.g.cp_root` set in your config (e.g., in init.lua)
  local snippet_dir = vim.g.cp_root
  if not snippet_dir then
    vim.notify("`vim.g.cp_root` is not set. Skipping custom snippet loading.", vim.log.levels.INFO)
    return
  end

  local snippet_files = list_snip_files(snippet_dir)

  for _, filepath in ipairs(snippet_files) do
    local filename = vim.fn.fnamemodify(filepath, ":t")
    
    -- ✨ KEY CHANGE: The pattern now matches your desired format.
    -- Format: "trigger.snip.extension"
    -- Example: "base.snip.cpp" -> trigger="base", filetype="cpp"
    local trigger, filetype = filename:match("^(.-)%.snip%.(.-)$")

    if trigger and filetype then
      -- Safely read the entire file content
      local ok, body = pcall(vim.fn.readfile, filepath)

      if ok and body then
        -- Join lines returned by readfile() into a single string
        local snippet_content = table.concat(body, "\n")
        
        if #snippet_content > 0 then
          -- Use the parser to create a snippet that understands placeholders
          ls.add_snippets(filetype, {
            parse(trigger, snippet_content)
          }, { 
            key = filepath 
          })
        end
      else
        vim.notify("Failed to read snippet file: " .. filepath, vim.log.levels.ERROR)
      end
    else
      vim.notify("Invalid snippet filename: " .. filename .. " (expected 'trigger.snip.extension')", vim.log.levels.WARN)
    end
  end
end

-- 🚀 Load all custom snippets once on startup.
load_custom_snippets()