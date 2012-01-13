#
# INSTRUCTIONS
#
#   To enable auto-completion for your project dir add this to
#   your .zshrc file:
#
#    zstyle :omz:plugins:h-art projects-path "$HOME/path/to/your/projects/dir"
#
# USAGE
#   Type "h", then space and then hit tab to get auto-completion of your project dirs.
#
#
# CREDITS
#
#   Based on code seen on Railscasts
#   http://railscasts.com/episodes/308-oh-my-zsh
#
#   Plugin by Francesco Levorato <flevorato@h-art.it>
#
#
local h_art_project_dir

h() {
  zstyle -s :omz:plugins:h-art projects-path h_art_project_dir;
  cd $h_art_project_dir/$1;
}
_h() {
  zstyle -s :omz:plugins:h-art projects-path h_art_project_dir;
  _files -W $h_art_project_dir -/;
}
compdef _h h
