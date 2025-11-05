{ config, pkgs, ... }:
{
  home.username = "vladimir";
  home.homeDirectory = "/home/vladimir";
  home.stateVersion = "25.05";

  programs.bash = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName  = "dave9000";
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = ''
    	set tabstop=2
    	set number relativenumber
    '';
    plugins = [
      pkgs.vimPlugins.nvim-tree-lua
      {
        plugin = pkgs.vimPlugins.vim-startify;
        config = "let g:startify_change_to_vcs_root = 0";
      }
    ];
  };

  home.packages = with pkgs; [
    vlc
    bat
    viber
  ];
}
