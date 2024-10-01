local extensions = {
  javascript = "js",
  javascriptreact = "jsx",
  json = "json",
  jsonc = "jsonc",
  markdown = "md",
  esmodule = "mjs",
  typescript = "ts",
  typescriptreact = "tsx",
  yaml = "yaml",
}
---@type conform.FileFormatterConfig
return {
  meta = {
    url = "https://deno.land/manual/tools/formatter",
    description = "Use [Deno](https://deno.land/) to format TypeScript, JavaScript/JSON and markdown.",
  },
  command = "deno",
  args = function(self, ctx)
    return {
      "fmt",
      "-",
      "--ext",
      extensions[vim.bo[ctx.buf].filetype],
    }
  end,
}
