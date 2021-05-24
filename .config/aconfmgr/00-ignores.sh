IgnorePath '*/.updated'
IgnorePath '*/.pwd.lock'
IgnorePath '/boot/*'
IgnorePath '/etc/adjtime'
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/fstab'
IgnorePath '/etc/group*'
IgnorePath '/etc/gshadow*'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/mkinitcpio.d/*'
IgnorePath '/etc/os-release'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/pacman.d/mirrorlist'
IgnorePath '/etc/passwd*'
IgnorePath '/etc/resolv.conf'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/shells'
IgnorePath '/etc/ssl'
IgnorePath '/etc/systemd/homed.conf'
IgnorePath '/etc/xml/catalog'
IgnorePath '/lost+found'
IgnorePath '/usr/bin/*'
IgnorePath '/usr/lib/*'
IgnorePath '/usr/share/*'
IgnorePath '/var/*'

# TODO: Encrypt wifi passwords
# TODO: Store passwords per-user
IgnorePath '/etc/NetworkManager/system-connections/*'

# These are created before aconfmgr gets a chance to run, so let's just skip them
IgnorePath '/etc/sudoers.d/mike'
IgnorePath '/etc/zsh/zshenv'
