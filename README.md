# 꿀벌이 영어로 하면 vi (비) 비빔의 비예요

![bibim](./docs/images/bibim.jpeg)

## Tree

```
.
├── brew    : Brew formulae list files (Generated w/ `$ brew leaves`)
├── grub    : GRUB settings
├── vimrc   : .vimrc files
└── zshrc   : .zshrc files
```

## Installation

### VIMRC

#### 1. Basic setup (All plugins included)

```bash
curl https://raw.githubusercontent.com/haeramkeem/yuvivim/main/vimrc/basic.vim -o ~/.vimrc
curl https://raw.githubusercontent.com/haeramkeem/yuvivim/main/vimrc/coc-settings.json -o ~/.vim/coc-settings.json
```

#### 2. Installation without CoC setup

```bash
curl https://raw.githubusercontent.com/haeramkeem/yuvivim/main/vimrc/no-coc.vim -o ~/.vimrc
```

#### 3. Minimum installation (No plugins included)

```bash
curl https://raw.githubusercontent.com/haeramkeem/yuvivim/main/vimrc/minimum.vim -o ~/.vimrc
```

### ZSHRC

```bash
curl https://raw.githubusercontent.com/haeramkeem/yuvivim/main/zshrc/zshrc > ~/.zshrc
```

### GRUB

```bash
sudo curl https://raw.githubusercontent.com/haeramkeem/yuvivim/main/grub/grub -o /etc/default/grub
```
