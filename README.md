# homebrew-hot-clipboard

Homebrew tap for [hot-clipboard](https://github.com/Whatfck/hot-clipboard) — an ergonomic macOS clipboard CLI (`hc` / `hp`).

## Install

```bash
brew tap Whatfck/hot-clipboard
brew install hot-clipboard
```

Or in one line:

```bash
brew install Whatfck/hot-clipboard/hot-clipboard
```

## Usage

```bash
hc file1.txt file2.png   # copy files to the clipboard
cat notes.md | hc         # copy text
hc -b image.png           # copy image as bitmap
hc -c                     # clear clipboard

hp                        # paste according to clipboard content
hp -d ./out               # paste into a directory
hp -i                     # inspect clipboard
```

See the [main repository](https://github.com/Whatfck/hot-clipboard) for full documentation.

## Maintenance

After publishing a new release tag in the main repo, update the `url` and `sha256`
in `Formula/hot-clipboard.rb`:

```bash
curl -sL https://github.com/Whatfck/hot-clipboard/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

## License

MIT
