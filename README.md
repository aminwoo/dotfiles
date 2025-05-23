# Dotfiles

1.
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

2
```
echo ".cfg" >> ~/.gitignore
```

3.
```
git clone --bare <your-git-repo-url> $HOME/.cfg
```

4.
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

5.
```
config checkout
```
