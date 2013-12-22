class people::sigma {
  include emacs
  include evernote
  
  include bitlbee
  include chrome
  include dropbox
  include skype

  include slate

  include python
  include tmux
  include zsh

  include vmware_fusion
  include vlc

  include iterm2::stable
  
  $home     = "/Users/${::boxen_user}"
  $projects = "${home}/Projects/git"
  $dotfiles = "${projects}/dotfiles"

  file { $projects:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'sigma/dotfiles',
    require => File[$projects]
  }

  package {
    ['zile']:
  }
}
