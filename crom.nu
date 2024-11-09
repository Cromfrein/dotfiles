use std *

path add ($env.HOME | path join ".local" "bin")

use ($nu.default-config-dir | path join 'starship.init.nu')

def cls [] {
  clear;ls
}
def cla [] {
  clear;ls -la
}
def dev [] {
  nix-shell --run $env.SHELL;
}
