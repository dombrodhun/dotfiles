return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    opts.linters = opts.linters or {}

    local lint = require("lint")
    for _, name in ipairs({ "markdownlint-cli2", "markdownlint" }) do
      local linter = lint.linters[name]
      if linter and linter.parser then
        local orig_parser = linter.parser
        opts.linters[name] = opts.linters[name] or {}
        opts.linters[name].parser = function(output, bufnr)
          local diagnostics = orig_parser(output, bufnr)
          local filtered = {}
          for _, diag in ipairs(diagnostics) do
            if not (diag.message and (diag.message:find("MD013") or diag.message:find("md013"))) then
              table.insert(filtered, diag)
            end
          end
          return filtered
        end
      end
    end
  end,
}
