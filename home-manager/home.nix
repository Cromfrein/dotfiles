{ config, pkgs, ... }:

{
	home.username = "cromfrein";
	home.homeDirectory = "/home/cromfrein";

  # don't change from the default home-manager generates
	home.stateVersion = "24.11"; 

	home.packages = with pkgs; [
		haruna
		hyfetch
		vesktop
		prismlauncher
		signal-desktop
		dolphin-emu
		steamtinkerlaunch
		protonplus
		protontricks
		r2modman
		testdisk-qt
		tree
		cyme
		piper
		airshipper
		unar
		heroic
		ryubing
		easyeffects
		umu-launcher
		git
		wine-staging
		openmw
		glfw3-minecraft
		appimage-run

		# Fonts
		inter
		# (pkgs.nerdfonts.override { fonts = [ "FiraCode" "Hack" ]; })

		# (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
	];

	programs.helix = {
		settings = {
			theme = "catppuccin_mocha";
			editor = {
				statusline = {
					left  = ["mode" "version-control" "spinner"];
					center = ["file-name" "read-only-indicator" "file-modification-indicator"];
					right = ["diagnostics" "selections" "register" "position" "file-type" "file-encoding"];
					seperator = "|";
					mode.normal = "CMD";
					mode.insert = "INS";
					mode.select = "SEL";
				};
				cursor-shape = {
					normal = "underline";
					insert = "bar";
					select = "block";
				};
				file-picker = {
					hidden = true;
				};
				whitespace.render = {
					space = "none";
					tab = "none";
					nbsp = "none";
					nnbsp = "none";
					newline = "all";
				};
				whitespace.characters = {};
				gutters = {};
				soft-wrap = {};
				smart-tab = {};
   		 	};
		
				keys.normal = {};
		};
	};

	programs.obs-studio = {
		enable = true;
		plugins = with pkgs.obs-studio-plugins; [
			wlrobs
		obs-pipewire-audio-capture
		obs-vkcapture
		];
	};

	programs.starship = {
		enable = true;
		enableNushellIntegration = true;
	};

	services.arrpc.enable = true;

	programs.firefox.enable = true;
  

	home.file = {};
	home.sessionVariables = {};

	fonts.fontconfig = {enable = true;};

	# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;
}
