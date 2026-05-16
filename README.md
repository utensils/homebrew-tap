# utensils/homebrew-tap

Homebrew tap for [Utensils](https://github.com/utensils) tools.

## Install

```bash
brew tap utensils/tap
brew install --cask claudette
```

Or in a single command:

```bash
brew install --cask utensils/tap/claudette
```

## What's here

| Cask | Description |
|------|-------------|
| [`claudette`](Casks/claudette.rb) | Desktop orchestrator for parallel Claude Code agents — [utensils/Claudette](https://github.com/utensils/Claudette) |

## Updates

Casks in this tap are bumped automatically by the source project's release workflow after each tagged release. The `claudette` cask declares `auto_updates true`, so the app's built-in Tauri updater handles in-place upgrades — `brew upgrade` only refreshes the cask version pointer.

## License

Each cask references upstream artifacts under their respective licenses. The tap files themselves are released under the [BSD 2-Clause License](LICENSE) (matching Homebrew/homebrew-cask).
