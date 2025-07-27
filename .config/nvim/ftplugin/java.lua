local jdtls = require('jdtls')
local home = os.getenv("HOME")

-- Default to current directory if no project root is found
local root_markers = { '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' }
local root_dir = require('jdtls.setup').find_root(root_markers) or vim.fn.getcwd()

-- Create a fallback workspace folder
local workspace_folder = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

-- JDTLS configuration
local config = {
  cmd = { "jdtls", "-data", workspace_folder },

  root_dir = root_dir, -- important, even for fallback

  capabilities = require('cmp_nvim_lsp').default_capabilities(),

  settings = {
    java = {},
  },

  init_options = {
    bundles = {},
  },
}

jdtls.start_or_attach(config)
