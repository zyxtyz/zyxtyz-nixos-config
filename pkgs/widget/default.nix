 { pkgs, inputs, settings, ... }:

 {
	environment.systemPackages = [
            (inputs.quickshell.packages.${pkgs.system}.default.override {
              withJemalloc = true;
              withQtSvg = true;
              withWayland = true;
              withX11 = false;
              withPipewire = true;
              withPam = true;
              withHyprland = true;
              withI3 = false;
            })
          ];
}
