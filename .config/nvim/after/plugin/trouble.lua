local trouble = require('trouble')

trouble.setup {
  signs = {
      -- icons / text used for a diagnostic
      error = "",
      warning = "",
      hint = "",
      information = "",
      other = "",
    },
  use_diagnostic_signs = false
}
