def _dummy_toolchain_impl(ctx):
  ctx = ctx  # unused argument
  toolchain = platform_common.ToolchainInfo()
  return [toolchain]

dummy_toolchain = rule(_dummy_toolchain_impl, attrs = {})

