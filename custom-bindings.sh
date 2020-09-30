#!/bin/bash
##############################################################################
#            __              __  ___  ___  __   ___    __                    #
#           /__`  |\/|  /\  |__)  |  |__  |__) |__  | /__` |__|              #
#           .__/  |  | /~~\ |  \  |  |___ |  \ |    | .__/ |  |              #
#                                                                            #
##############################################################################
# Custom keybindings script for Pop!_shell, loosely based on i3 and Regolith #
##############################################################################
# WARNING: This script will change your gnome keybindings. If you are not    #
# using Pop!_shell, it will be useless.                                      #
# To reverse the effects of this, you can rest keybindings in the settings   #
# application.                                                               #
##############################################################################


# First Let's name our vim keys to make things more readable later
left="h"
down="j"
up="k"
right="l"

# Define the dconf branches
KEYS_GNOME_WM=/org/gnome/desktop/wm/keybindings
KEYS_GNOME_SHELL=/org/gnome/shell/keybindings
KEYS_MUTTER=/org/gnome/mutter/keybindings
KEYS_MEDIA=/org/gnome/settings-daemon/plugins/media-keys
KEYS_POP=/org/gnome/shell/extensions/pop-shell

# Disable incompatible shortcuts and conflicting shortcuts
dconf write /org/gnome/mutter/wayland/keybindings/restore-shortcuts "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-1 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-2 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-3 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-4 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-5 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-6 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-7 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-8 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-9 "@as []"
dconf write ${KEYS_GNOME_SHELL}/switch-to-application-10 "@as []"
dconf write ${KEYS_GNOME_SHELL}/open-application-menu "@as []"
dconf write ${KEYS_MEDIA}/rotate-video-lock-static "@as []"
dconf write ${KEYS_MUTTER}/toggle-tiled-left "@as []"
dconf write ${KEYS_MUTTER}/toggle-tiled-right "@as []"
dconf write ${KEYS_GNOME_WM}/minimize "@as []"

###########################
#                         #
# Navigation key bindings #
#                         #
###########################

# Switch between workspaces
# Note these will only work with the horizontal workspaces extension
# dconf write ${KEYS_GNOME_WM}/switch-to-workspace-left "['<Shift><Super>Tab']"
# dconf write ${KEYS_GNOME_WM}/switch-to-workspace-right "['<Super>Tab']"
# Move windows between workspaces
# dconf write ${KEYS_GNOME_WM}/move-to-workspace-left "['<Shift><Super>Left','<Shift><Super>${left}']"
#.dconf write ${KEYS_GNOME_WM}/move-to-workspace-right "['<Shift><Super>Right','<Shift><Super>${right}']"
# Move between monitors
dconf write ${KEYS_GNOME_WM}/move-to-workspace-left "['<Shift><Super>Left']"
dconf write ${KEYS_GNOME_WM}/move-to-workspace-right "['<Shift><Super>Right']"

# These are for default Ubuntu vertical workspaces
 dconf write ${KEYS_GNOME_WM}/switch-to-workspace-down "['<Super>Down']"
 dconf write ${KEYS_GNOME_WM}/switch-to-workspace-up "['<Super>Up']"
 dconf write ${KEYS_GNOME_WM}/move-to-workspace-down "['<Shift><Super>Down']"
 dconf write ${KEYS_GNOME_WM}/move-to-workspace-up "['<Shift><Super>Up']"
 dconf write ${KEYS_POP}/tile-swap-left "['<Primary>Left', '<Primary>${left}']"
 dconf write ${KEYS_POP}/tile-swap-right "['<Primary>Right', '<Primary>${right}']"
 dconf write ${KEYS_POP}/tile-swap-up "['<Primary>Up', '<Primary>${up}']"
 dconf write ${KEYS_POP}/tile-swap-down "['<Primary>Down', '<Primary>${down}']"
######################################
#                                    #
# Change Pop!_shell default bindings #
#                                    #
######################################

# Toggle fullscreen state
dconf write ${KEYS_GNOME_WM}/toggle-fullscreen "['<Super>F11']"
# Toggle maximization state
dconf write ${KEYS_GNOME_WM}/toggle-maximized "['<Super>m']"
# Toggle fullscreen state
dconf write ${KEYS_GNOME_WM}/minimize "['<Super>h']"
# Toggle floating window
dconf write ${KEYS_POP}/toggle-floating "['<Shift><Super>f']"

####################################
# Tile Adjustment mode keybindings #
#
# Enter/Exit tile adjustment mode
dconf write ${KEYS_POP}/tile-enter "['<Super>Return']"
dconf write ${KEYS_POP}/tile-accept "['Return']"
dconf write ${KEYS_POP}/tile-reject "['Escape']"
# Move tiles
dconf write ${KEYS_POP}/tile-move-left "['Left']"
dconf write ${KEYS_POP}/tile-move-right "['Right']"
dconf write ${KEYS_POP}/tile-move-up "['Up']"
dconf write ${KEYS_POP}/tile-move-down "['Down']"
# Resize Tiles
dconf write ${KEYS_POP}/tile-resize-left "['<Shift>Left']"
dconf write ${KEYS_POP}/tile-resize-right "['<Shift>Right']"
dconf write ${KEYS_POP}/tile-resize-up "['<Shift>Up']"
dconf write ${KEYS_POP}/tile-resize-down "['<Shift>Down']"
# Select tiles
# dconf write ${KEYS_POP}/tile-swap-left "['<Primary>Left', '<Primary>${left}']"
# dconf write ${KEYS_POP}/tile-swap-right "['<Primary>Right', '<Primary>${right}']"
# dconf write ${KEYS_POP}/tile-swap-up "['<Primary>Up', '<Primary>${up}']"
# dconf write ${KEYS_POP}/tile-swap-down "['<Primary>Down', '<Primary>${down}']"
#
#  end of tile adjustment mode bindings #
#########################################

dconf write ${KEYS_POP}/show-title "false"

# Various bindings and launchers
# Lock screen
dconf write ${KEYS_MEDIA}/screensaver "['<Super>l']"
# Launch email client
dconf write ${KEYS_MEDIA}/email "['<Super>e']"
# Launch terminal
dconf write ${KEYS_MEDIA}/terminal "['<Super>t']"
# Launch web browser
dconf write ${KEYS_MEDIA}/www "['<Super>w']"
# Close Window
dconf write ${KEYS_GNOME_WM}/close "['<Super>q']"

# Various default settings (without keybindings)
# Hide titles
dconf write ${KEYS_POP}/show-title "false"

dconf write ${KEYS_POP}/activate-launcher "['<Super>slash', '<Super>Space']"
