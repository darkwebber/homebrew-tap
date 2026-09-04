# Homebrew tap for Fresnel

Install Fresnel on an Apple Silicon Mac:

```bash
brew install --yes darkwebber/tap/fresnel
fresnel setup --yes
```

`--yes` avoids Homebrew 6's default confirmation prompt, which can fail to
receive input in embedded terminals. This grants no extra tap trust: Homebrew
still trusts only the explicitly requested Fresnel formula.

Fresnel currently requires macOS 14 or newer and at least 16 GB unified memory.
The formula installs the harness; guided setup separately downloads the pinned
Spark MLX runtime and approximately 4.1 GB model checkpoint.
