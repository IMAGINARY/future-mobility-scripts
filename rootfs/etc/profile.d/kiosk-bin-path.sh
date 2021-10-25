# Expand $PATH to include the kiosk-scripts bin directory.
kiosk_bin_path="/opt/kiosk-scripts/bin"
kiosk_bin_install_path="/opt/kiosk-scripts/bin/install"
kiosk_bin_init_path="/opt/kiosk-scripts/bin/init"
kiosk_bin_launch_path="/opt/kiosk-scripts/bin/launch"
if [ -n "${PATH##*${kiosk_bin_path}}" -a -n "${PATH##*${kiosk_bin_path}:*}" ]; then
    export PATH="$PATH:${kiosk_bin_path}:${kiosk_bin_install_path}:${kiosk_bin_init_path}:${kiosk_bin_launch_path}"
fi
