local jdtls = require('jdtls')
local jdtls_dir = vim.fn.expand('~/.local/share/nvim/mason/packages/jdtls')

jdtls.start_or_attach({
  cmd = {
    'jdtls',
    '--jvm-arg=-javaagent:'..jdtls_dir..'/lombok.jar',
  },
  root_dir = vim.fs.root(0, { '.git', 'gradlew', 'pom.xml' }) or vim.fn.getcwd(),

  settings = {
    java = {
      eclipse = { downloadSources = true },
      maven = { downloadSources = true },
      references = { includeDecompiledSources = true },
      contentProvider = { preferred = 'fernflower' },
    },
  },
})
