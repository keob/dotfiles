{ config, pkgs, lib, ... }:

let
  user = "kebo";
  password = "";
  SSID = "";
  SSIDpassword = "";
  interface = "wlan0";
  hostname = "nixos";
in
{
  imports = ["${fetchTarball "https://github.com/NixOS/nixos-hardware/archive/master.tar.gz" }/raspberry-pi/4"];

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
      options = [ "rw,relatime" ];
    };
  };

  boot = {
    tmpOnTmpfs = true;
    cleanTmpDir = true;
    consoleLogLevel = 0;
    kernelParams = [
      "quiet"
    ];

    kernelPackages = pkgs.linuxPackages_latest;

    # initrd.verbose = false;

    enableContainers = false;
  };

  systemd.network.enable = true;
  systemd.network.networks = {
    wlan = {
      name = "wl*";
      DHCP = "yes";
      dns = [ "119.29.29.29" "2400:3200::1" ];
      networkConfig = {
        MulticastDNS = "yes";
        IPv6PrivacyExtensions = "yes";
      };
    };
    ethernet = {
      name = "en*";
      DHCP = "yes";
      dns = [ "119.29.29.29" "2400:3200::1" ];
      networkConfig = {
        MulticastDNS = "yes";
        IPv6PrivacyExtensions = "yes";
      };
    };
  };

  services.resolved.enable = true;

  networking = {
    useDHCP = false;
    hostId = "10241024";
    hostName = hostname;
    firewall.enable = false;
    wireless = {
      enable = true;
      networks."${SSID}".psk = SSIDpassword;
      interfaces = [ interface ];
    };
    timeServers = [
      "ntp.tencent.com"
      "ntp.ntsc.ac.cn"
    ];
  };

  time.timeZone = "Asia/Shanghai";

  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  console = {
    font = "";
    keyMap = "us";
  };

  users = {
    mutableUsers = true;
    users = {
        "${user}" = {
        isNormalUser = true;
        password = password;
        extraGroups = [ "wheel" "audio" "video" "input" ];
      };
      root = {
        password = password;
      };
    }
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };

  nix = {
    settings = {
      auto-optimise-store = true;
      trusted-users = [ "root" "kebo" ];
      substituters = lib.mkForce [
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        "https://mirror.sjtu.edu.cn/nix-channels/store"
        "https://cache.nixos.org"
      ];
    };
    extraOptions = ''
      keep-outputs = true
      keep-derivations = true
      experimental-features = nix-command flakes
    '';
    gc = {
      automatic = false;
      dates = "weekly";
      options = "--delete-older-than 14d";
    };
  };

  environment.systemPackages = with pkgs; [
    wget
    curl
    axel
    fd
    ripgrep
    bat
    exa
    tokei
    lazygit
    direnv
    stylua
    jq
    zip
    unzip
    btop
    htop
    tmux
    tree
    gnupg
    sqlite
    pfetch
    gdb
    gcc
    pciutils
    usbutils
  ];

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "yes";
    };
  };

  programs.command-not-found.enable = false;

  programs.nano.nanorc = ''
    set nowrap
    set tabsize 2
    set tabstospaces
  '';

  programs.git = {
    enable = true;
    lfs.enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
      core = {
        safecrlf = true;
        autocrlf = "input";
        ignoreCase = false;
      };
      http = {
        postBuffer = 524288000;
      };
    };
  };

  programs.bash = {
    enableLsColors = true;
  };

  documentation.nixos.enable = false;

  environment.etc.issue.text = lib.mkForce ''
    NixOS \r (\l)

  '';

  environment.shellAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";

    md = "mkdir -p";
    la = "ls -A";
    lh = "ls -lh";
    ll = "ls -Alh";
    lth = "ls -Alth";
    ls = "ls --color=auto";

    gaa = "git add .";
    gph = "git push";
    gpl = "git pull";
    gfh = "git fetch";
    gco = "git checkout";
    gcm = "git commit -m";
    gst = "git status -sb";

    tn = "tmux new -s";
  };

  sound = {
    enable = true;
    extraConfig = ''
      defaults.pcm.card 1
      defaults.ctl.card 1
      defaults.pcm.device 0
    '';
  };

  system.stateVersion = "23.05";
}
