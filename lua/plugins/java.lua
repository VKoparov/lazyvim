return {
  "mfussenegger/nvim-jdtls",
  optional = true,
  opts = function(_, opts)
    -- Reuse the existing JDT LS and Lombok installation while Mason's copy is broken.
    local packages = vim.fn.stdpath("data") .. "/nvim-java/packages"
    local launcher = packages .. "/jdtls/1.54.0/bin/jdtls"
    local lombok = packages .. "/lombok/1.18.42/lombok-1.18.42.jar"
    if vim.fn.executable(launcher) == 1 and vim.fn.filereadable(lombok) == 1 then
      opts.cmd = { launcher, "--jvm-arg=-javaagent:" .. lombok }
    end
  end,
}
