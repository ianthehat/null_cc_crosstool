package(default_visibility = ["//visibility:public"])

CPUs = [
    "k8",
    "armeabi-v7a",
    "ios_x86_64",
    "x64_windows_msvc",
    "x64_windows",
]

cc_toolchain_suite(
    name = "null_cc_crosstool",
    toolchains = { cpu+"|compiler":":"+cpu for cpu in CPUs},
)

filegroup(
    name = "empty",
    srcs = [],
)

[
    cc_toolchain(
        name = cpu,
        all_files = ":empty",
        compiler_files = ":empty",
        cpu = cpu,
        dwp_files = ":empty",
        dynamic_runtime_libs = [":empty"],
        linker_files = ":empty",
        objcopy_files = ":empty",
        static_runtime_libs = [":empty"],
        strip_files = ":empty",
        supports_param_files = 1,
    ) for cpu in CPUs
]

toolchain_type(name = "toolchain_type")

# A dummy toolchain is necessary to satisfy toolchain resolution until platforms
# are used in c++ by default.
# TODO(b/64754003): Remove once platforms are used in c++ by default.
toolchain(
    name = "dummy_cc_toolchain",
    toolchain = "dummy_cc_toolchain_impl",
    toolchain_type = ":toolchain_type",
)

load(":dummy_toolchain.bzl", "dummy_toolchain")

dummy_toolchain(name = "dummy_cc_toolchain_impl")
