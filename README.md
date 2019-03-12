# dotfiles

My system configuration files, to be managed by GNU stow.

## Setup

1. Install GNU stow

    You can use [linuxbrew](https://linuxbrew.sh) to get it on systems without root.
    
        brew install stow

2. Clone the repo

        git clone --recursive git@github.com:mattrossman/dotfiles

3. Stow desired files

    Example:

        stow vim

