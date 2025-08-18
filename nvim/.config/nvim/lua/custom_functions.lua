function ResizeSV(width)
	local total_width = vim.o.columns
	local left_width = math.floor(total_width * width)
	vim.cmd.wincmd("h")
	vim.api.nvim_win_set_width(0, left_width)
end

function Layout0()
	vim.cmd("only")
end

function Layout1()
	vim.cmd("only")
	vim.cmd("vertical split " .. vim.g.cp_root .. "input.txt")
	ResizeSV(0.75)
	vim.cmd("wincmd l")
	vim.cmd("split " .. vim.g.cp_root .. "output.txt")
	vim.cmd("wincmd h")
	vim.opt.laststatus = 3
end

function Layout2()
	vim.cmd("only")
	vim.cmd("vertical split " .. vim.g.cp_root .. "input.txt")
	ResizeSV(0.7)
	vim.cmd("wincmd l")
	vim.cmd("split " .. vim.g.cp_root .. "debug.txt")
	vim.cmd("split " .. vim.g.cp_root .. "output.txt")
	vim.cmd("wincmd h")
	vim.opt.laststatus = 3
end

local function ReloadOutputFile()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_get_name(buf):match("output.txt$") then
			vim.api.nvim_buf_call(buf, function()
				vim.cmd("checktime")
			end)
		end
	end
end

function _cpp_build_and_run_io()
	local current_file = vim.fn.expand("%")
	cpp_cmd = "!"
		.. vim.g.gpp
		.. " "
		.. table.concat(vim.g.gpp_args, " ")
		.. ' "'
		.. vim.fn.expand("%")
		.. '" && ./a.out < '
		.. vim.g.cp_root
		.. "input.txt > "
		.. vim.g.cp_root
		.. "output.txt 2> "
		.. vim.g.cp_root
		.. "debug.txt"

	vim.cmd("wa")
	vim.cmd(cpp_cmd)
end

function _ast_run()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
	vim.notify("C++ Running All Test Cases")
	vim.cmd("wa")
	vim.cmd("AssistantToggle")

	vim.schedule(function()
		local key = vim.api.nvim_replace_termcodes("R", true, false, true)
		vim.api.nvim_feedkeys(key, "", false)
	end)
end

function _ast_show()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
	vim.cmd("wa")
	vim.cmd("AssistantToggle")
end
