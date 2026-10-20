# Meow Homebrew tap

Install the Meow CLI on macOS or Linux:

```sh
brew install amazingang/tap/meow
meow setup --server https://YOUR_MEOW_SERVER
```

Copy your server address and Device Key from the Meow iPhone app. Setup asks for
that key separately, connects detected Claude Code/Codex installations after
confirmation, and sends a test notification.

Upgrade with `brew upgrade meow`. Uninstall with `brew uninstall meow`.
The formula downloads prebuilt ARM64 or AMD64 binaries and verifies SHA-256.
Go and Node.js are not required.

[Source, direct installer and documentation](https://github.com/AmazingAng/meow)
· [CLI releases](https://github.com/AmazingAng/meow/releases)

Maintainers: generate `Formula/meow.rb` from the release checksums with
`scripts/update_homebrew.py` in the Meow source repository before committing an update.
