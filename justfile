build:
    SDKROOT="$(xcrun --sdk macosx --show-sdk-path)" \
    CC="$(xcrun --sdk macosx --find clang)" \
    CXX="$(xcrun --sdk macosx --find clang++)" \
    cargo xtask steel
