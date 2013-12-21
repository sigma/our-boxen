class people::sigma {
  include emacs
  include evernote
  
  include bitlbee
  include chrome
  include dropbox
  include skype

  include slate

  include python
  include ruby
  include rbenv

  include zsh
  include tmux

  include vmware_fusion
  
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
}
