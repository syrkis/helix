build:
    SDKROOT="$(xcrun --sdk macosx --show-sdk-path)" \
    CC="$(xcrun --sdk macosx --find clang)" \
    CXX="$(xcrun --sdk macosx --find clang++)" \
    cargo xtask steel

pick pr:
    git fetch -q https://github.com/helix-editor/helix.git pull/{{pr}}/head
    gh pr view {{pr}} -R helix-editor/helix --json commits --jq '.commits[].oid' \
        | xargs git cherry-pick
