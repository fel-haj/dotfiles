{ ... }: {
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;


    # settings = {
    #   add_newline = true;
    #   format = " [](overlay0)$os$username[](bg:blue fg:overlay0)$directory[](blue)$fill$all $character";
    #   palette = "catppuccin_mocha";
    #   command_timeout = 1000;
    #
    #   username = {
    #     show_always = true;
    #     style_user = "bg:overlay0 fg:#ffffff";
    #     style_root = "bg:overlay0";
    #     format = "[ \$user ](\$style)";
    #   };
    #
    #   directory = {
    #     style = "bg:blue fg:base";
    #     format = "[ \$path ](\$style)";
    #     truncation_length = 1;
    #     read_only = " 󰌾";
    #   };
    #
    #   fill = {
    #     disabled = false;
    #     style = "dimmed";
    #     symbol = " ";
    #   };
    #
    #   character = {
    #     success_symbol = "[](bold #32cd32)";
    #     error_symbol = "[](bold red)";
    #   };
    #
    #   aws = {
    #     symbol = "  ";
    #   };
    #
    #   buf = {
    #     symbol = " ";
    #   };
    #
    #   c = {
    #     symbol = " ";
    #   };
    #
    #   cmake = {
    #     symbol = " ";
    #   };
    #
    #   conda = {
    #     symbol = " ";
    #   };
    #
    #   crystal = {
    #     symbol = " ";
    #   };
    #
    #   dart = {
    #     symbol = " ";
    #   };
    #
    #   docker_context = {
    #     symbol = " ";
    #   };
    #
    #   elixir = {
    #     symbol = " ";
    #   };
    #
    #   elm = {
    #     symbol = " ";
    #   };
    #
    #   fennel = {
    #     symbol = " ";
    #   };
    #
    #   fossil_branch = {
    #     symbol = " ";
    #   };
    #
    #   git_branch = {
    #     symbol = " ";
    #   };
    #
    #   git_commit = {
    #     tag_symbol = "  ";
    #   };
    #
    #   golang = {
    #     symbol = " ";
    #   };
    #
    #   guix_shell = {
    #     symbol = " ";
    #   };
    #
    #   haskell = {
    #     symbol = " ";
    #   };
    #
    #   haxe = {
    #     symbol = " ";
    #   };
    #
    #   hg_branch = {
    #     symbol = " ";
    #   };
    #
    #   hostname = {
    #     ssh_symbol = " ";
    #   };
    #
    #   java = {
    #     symbol = " ";
    #   };
    #
    #   julia = {
    #     symbol = " ";
    #   };
    #
    #   kotlin = {
    #     symbol = " ";
    #   };
    #
    #   lua = {
    #     symbol = " ";
    #   };
    #
    #   memory_usage = {
    #     symbol = "󰍛 ";
    #   };
    #
    #   meson = {
    #     symbol = "󰔷 ";
    #   };
    #
    #   nim = {
    #     symbol = "󰆥 ";
    #   };
    #
    #   nix_shell = {
    #     symbol = " ";
    #   };
    #
    #   nodejs = {
    #     symbol = " ";
    #   };
    #
    #   ocaml = {
    #     symbol = " ";
    #   };
    #
    #   os = {
    #     format = "[\$symbol](\$style)";
    #     style = "bg:overlay0 fg:#ffffff";
    #     disabled = false;
    #     symbols = {
    #       Macos = "  ";
    #     };
    #   };
    #
    #   package = {
    #     symbol = "󰏗 ";
    #   };
    #
    #   perl = {
    #     symbol = " ";
    #   };
    #
    #   php = {
    #     symbol = " ";
    #   };
    #
    #   pijul_channel = {
    #     symbol = " ";
    #   };
    #
    #   python = {
    #     symbol = " ";
    #   };
    #
    #   rlang = {
    #     symbol = "󰟔 ";
    #   };
    #
    #   ruby = {
    #     symbol = " ";
    #   };
    #
    #   rust = {
    #     symbol = "󱘗 ";
    #   };
    #
    #   scala = {
    #     symbol = " ";
    #   };
    #
    #   swift = {
    #     symbol = " ";
    #   };
    #
    #   zig = {
    #     symbol = " ";
    #   };
    #
    #   gradle = {
    #     symbol = " ";
    #   };
    #
    #   palettes.catppuccin_mocha = {
    #     rosewater = "#f5e0dc";
    #     flamingo = "#f2cdcd";
    #     pink = "#f5c2e7";
    #     mauve = "#cba6f7";
    #     red = "#f38ba8";
    #     maroon = "#eba0ac";
    #     peach = "#fab387";
    #     yellow = "#f9e2af";
    #     green = "#a6e3a1";
    #     teal = "#94e2d5";
    #     sky = "#89dceb";
    #     sapphire = "#74c7ec";
    #     blue = "#89b4fa";
    #     lavender = "#b4befe";
    #     text = "#cdd6f4";
    #     subtext1 = "#bac2de";
    #     subtext0 = "#a6adc8";
    #     overlay2 = "#9399b2";
    #     overlay1 = "#7f849c";
    #     overlay0 = "#6c7086";
    #     surface2 = "#585b70";
    #     surface1 = "#45475a";
    #     surface0 = "#313244";
    #     base = "#1e1e2e";
    #     mantle = "#181825";
    #     crust = "#11111b";
    #   };
    # };
  };
}
