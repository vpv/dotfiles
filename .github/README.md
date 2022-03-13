dotfiles
========
My dotfiles, managed with [yadm](https://yadm.io). I mainly use Fedora. The files are MIT licensed as long as they have been written by me. If there are any scripts written by other people in this repository, those are under their respective licenses.

# vim
I'm testing handling vim plugins with git submodules. I followed [this blog post by b4d](https://b4d.sablun.org/blog/2019-05-30-from-pathogen-to-native-vim-package-loading-via-yadm/).

# Gnome
For saving Gnome's dconf I followed [this blog post by Peter Babič](https://peterbabic.dev/blog/keep-gnome-shell-settings-dotfiles-yadm/). The pre_commit hook causes some quite useless commits, because dconf includes stuff like the last open panel in gnome-settings. I still feel like using the hook is probably better than not using it and trying to remember to add dconf changes manually.

# po.vim
I copied po.vim from https://github.com/vim-scripts/po.vim--gray. The script does not seem to have any license at all.

