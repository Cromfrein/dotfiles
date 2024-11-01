use std *

path add ($env.HOME | path join ".local" "bin")

def cls [] {
  clear;ls
}
def cla [] {
  clear;ls -la
}
def dev [] {
  nix-shell --run $env.SHELL;
}
