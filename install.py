import os
os.system("clear")



areyousure = int(input("are you sure? 1 = yes; 2 = no"))
def install1(location):
  os.system("nix run nixpkgs#git -- clone https://github.com/zyxtyz/zyxtyz-nixos-config")
  os.system(f"mv ~/zyxtyz-nixos-config {location}")
  print(" do  >>  nixos-rebuild switch --flake {location}/flake/ --impure --fast  << so you can switch DUHH")
  delete = input("do you wanna delete your current configuration? y/n").lower()
  if delete == "y":
    os.system("rm -rf /etc/nixos/configuration.nix && rm -rf /etc/nixos/hardware.nix")
  elif delete == "n":
    print("okay")
  
  
  
if areyousure == 1:
  configuration = input('''
  BROOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
  okay.......

  do you wanna keep your configuration.nix?? (not recommended, you can use mine and then put your extra stuff inside)

  if you say no. it the pkgs won't even work brooo.. well unless you put this inside

  ```
  let
  	path = pkg: ../../pkgs/${pkg}/default.nix;
  in
  {
    imports =
      [ 
        ./hardware-configuration.nix
        ./packages.nix
      ] ++ map path settings.pkgs;```    and also have a file named settings.nix WHICH I DOOOOO!!!!
  
  please just use my configuration 🙏
  
  
  y/n >> ''')
  location = input("where do you want to put it? example: /home/john/.john  >>>>  ")
  if configuration == "y".lower():
    install1(f"{location}")1
else:
  print("okay gng")
  
  
  

