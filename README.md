# My Configuratoins based on Chezmoi

## Provision a New Host

For example on Arch Linux:
```sh
pacman -S chezmoi
chezmoi init git@bitbucket.org:leechau/mydotfiles.git
chezmoi status
chezmoi diff <full-file-path-to-be-compared>
chezmoi apply
chezmoi status
```

## Sync Changes Back Here

For example, I changed some files in folder ~/.config/fish,
and decided that the folder ~/.config/nvim are no longer managed by chezmoi
but a standalone repo [lazy-configs](https://bitbucket.org/leechau/lazy-configs/).
To sync these changes back here, run:
```sh
cd ~/.config
chezmoi add fish
chezmoi forget nvim
chezmoi cd
git add ...
git commit ...
git push ...
exit
```
