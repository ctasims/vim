# vim



# Vim Usage

```
Custom changes and important notes
    jk: exits insert mode
    space: leader key
    key text objects: w, p, ', "
```


## Basic Components
```
Verbs
    d: delete
    c: change
    y: yank (copy)
    v: visually select (V for line vs. character)

Modifiers
    i: inside
    a: around
    NUM: number (e.g.: 1, 2, 10)
    t: searches for something and stops before it
    f: searches for that thing and lands on it
    /: find a string (literal or regex)

Nouns
  w: word
  s: sentence
  ): sentence (another way of doing it)
  p: paragraph
  }: paragraph (another way of doing it)
  t: tag (think HTML/XML)
  b: block (think programming)
  Can also use f and t, the find commands. e.g. ct< changes all text from cursor to before next <.

File saving
    vi file: open your file in vim
    :w: write your changes to the file
    :q!: get out of vim (quit), but without saving your changes (!)
    :wq: write your changes and exit vim
    :saveas ~/some/path/: save your file to that locationvim
    ZZ: same as :wq

Searching
    /{string}: search for string
    t: jump up to a character
    f: jump onto a character
    *: search for other instances of the word under your cursor
    n: go to the next instance when you've searched for a string
    N: go to the previous instance when you've searched for a string
    ;: go to the next instance when you've jumped to a character
    ,: go to the previous instance when you've jumped to a character

```

## MOVEMENT
```
Basic Motion
    j: move down one line
    k: move up one line
    h: move left one character
    l: move right one character

Within line
    0: move to the beginning of the line
    $: move to the end of the line
    ^: move to the first non-blank character in the line
    t": jump to right before the next quotes
    f": jump and land on the next quotes

By word
    w: move forward one word
    b: move back one word
    e: move to the end of your word
    W: move forward one big word
    B: move back one big word

By sentence/paragraph
    W: move forward one big word
    B: move back one big word

On screen
    H: move to the top of the screen
    M: move to the middle of the screen
    L: move to the bottom of the screen
    gg: go to the top of the file
    G: go to the bottom of the file
    ^U: move up half a screen
    ^D: move down half a screen
    ^F: page down
    ^B: page up

Other motions
    Ctrl-i: jump to your previous navigation location
    Ctrl-o: jump back to where you were
    :$line_numberH: move to a given line number
    M: move to the middle of the screen
    L: move to the bottom of the screen
    ^E: scroll up one line
    ^Y: scroll down one line
    ^U: move up half a page
    ^D: move down half a page
    ^F: move down a page
    ^B: move up a page
```

## Working with Text
```
Text Objects
    words: iw and aw
    sentences: is and as
    paragraphs: ip and ap
    single quotes: i' and a'
    double quotes: i" and a"
    back ticks: i` and a`
    parenthesis: i( and a(
    brackets: i[ and a[
    braces: i{ and a{
    tags: it and at

Basic editing
    i: insert before the cursor
    a: append after the cursor
    I: insert at the beginning of the line
    A: append at the end of the line
    o: open a new line below the current one
    O: open a new line above the current one
    r: replace the one character under your cursor
    R: replace the character under your cursor, but just keep typing afterwards
    c<m>: change whatever you define as a movement, e.g. a word, or a sentence, or a paragraph.
    C: change the current line from where you're at
    ct?: change change up to the question mark
    s: substitute from where you are to the next command (noun)
    S: substitute the entire current line
    ~: change case of text
    gq: format current thing. e.g. gq ap to format around paragraph.
    u: undo your last action.
    Ctrl-r: redo the last action
    .: repeat last command
    y: yank (copy) whatever's selected
    yy: yank the current line
    p: paste the copied (or deleted) text after the current cursor position
    P: paste the copied (or deleted) text before the current cursor position

Deletion and Concatenation
    x: exterminate (delete) the character under the cursor
    X: exterminate (delete) the character before the cursor
    dm: delete whatever you define as a movement, e.g. a word, or a sentence, or a paragraph.
    dd: delete the current line
    dt.: delete delete from where you are to the period
    D: delete to the end of the line
    J: join the current line with the next one (delete what's between)

Substitution
    :%s /foo/bar/g : change foo to bar on every line
    :s /foo/bar/g  : change on current line only
 
```

## Visual Mode

```
    character-based: v
    line-based: V
    paragraphs: Ctrl-v
```

## Buffers
```
    :ls - list buffers
    :bn - Switch to next buffer
    :bp - Switch to previous buffer
    :bd - Close a buffer
    :b# - open specified buffer
    :sp [filename] - Opens a new file and splits your screen horizontally to show more than one buffer
    :vsp [filename] - Opens a new file and splits your screen vertically to show more than one buffer
    :ls - Lists all open buffers
    Ctrl-ws: Split windows horizontally
    Ctrl-wv: Split windows vertically
    Ctrl-ww: Switch between windows
    Ctrl-wq: Quit a window
    Ctrl-wc: close current window
    Ctrl-wh: Moves your cursor to the window to the left
    Ctrl-wl: Moves your cursor to the window to the right
    Ctrl-wj: Moves your cursor to the window below the one you're in
    Ctrl-wk: Moves your cursor to the window above the one you're in

```

## Surround
```
    cs"': for the word you're on, change the surrounding quotes from double to single
    cs'<q>: do the same, but change the single quotes to <q>
    ds": delete the double quotes around something
    ysiw[: surround the current word with brackets
    ysiw<em>: emphasize the current word. Dot repeatable.
    Visual Mode: select anything, and then type S. Puts in Ex mode to enter what to wrap with.
```


### References

* https://danielmiessler.com/study/vim/

## Windows Setup


### 1. Install Chocolately
Use the following instructions: 
 * (Download page)[https://chocolatey.org/install]


### 2. Install Required Packages
Install git and curl via choco

```
C:\> choco install -y git
C:\> choco install -y curl
C:\> choco install -y fzf
```

### 3. Install (vim-plug)[https://github.com/junegunn/vim-plug]
https://github.com/junegunn/vim-plug

Create plugin directory under `~/.vim/plugged`


### 4. Copy vimrc
On Windows, vimrc file belongs at ~/_vimrc


### 5. Install plugins
Launch `vim` and run `:PlugInstall`



Linux Setup
===


Instructions for setting up vim using Vundle and YouCompleteMe on
Debian-flavor.

The vim that ships with Ubuntu is old. Compile vim from source:
see https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial

sudo apt-get remove vim vim-runtime gvim

sudo apt-get remove vim-tiny vim-common vim-gui-common

sudo apt-get install checkinstall

cd ~
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7-config \
            --enable-perlinterp \
	    --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo checkinstall

sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim


Install git

Install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Install color scheme:
http://www.vim.org/scripts/script.php?script_id=625

symlink to vimrc:
$ ln -s ~/vim-setup-repo/vimrc ~/.vimrc
