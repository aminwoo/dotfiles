# Dotfiles

1. **Add the** `config` **alias to your shell configuration file:** This alias is the key to interacting with your dotfiles repository. Add it to your `~/.bashrc`, `~/.zshrc`, or equivalent shell startup file.
    ```
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    ```

2. **Ignore the bare repository directory:** To prevent recursive Git issues, make sure your global `.gitignore` file includes the directory where the bare repository will be cloned.
    ```
    echo ".cfg" >> ~/.gitignore
    ```

3. Clone your dotfiles repository as a bare repository into a `.cfg` directory within your home folder.
    ```
    git clone --bare [<your-git-repo-url>](https://github.com/aminwoo/dotfiles.git) $HOME/.cfg
    ```

4. Checkout the files from your bare repository into your `$HOME` directory.
    ```
    config checkout
    ```
