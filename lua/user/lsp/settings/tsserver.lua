return {
  settings = {
    typescript = {
      inlayHints = {
        includeInlayEnumMemberValueHints = false,
        includeInlayFunctionLikeReturnTypeHints = false,
        includeInlayFunctionParameterTypeHints = false,
        includeInlayParameterNameHints = "none", -- 'none' | 'literals' | 'all';
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayPropertyDeclarationTypeHints = false,
        includeInlayVariableTypeHints = false,
      },
    },
  },
}
