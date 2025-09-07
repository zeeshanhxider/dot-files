#!/bin/bash
# ~/.config/hypr/scripts/open-apps.sh
# Script to open multiple applications in specific workspaces

# Function to check if an application is already running
is_running() {
    pgrep -f "$1" > /dev/null
}

# Function to wait for window to appear and move it to correct workspace
move_window_to_workspace() {
    local app_class="$1"
    local workspace="$2"
    local max_attempts=10
    local attempt=0
    
    while [ $attempt -lt $max_attempts ]; do
        if hyprctl clients | grep -q "class: $app_class"; then
            hyprctl dispatch movetoworkspacesilent "$workspace,class:$app_class"
            break
        fi
        sleep 0.5
        ((attempt++))
    done
}

echo "Opening applications in workspaces..."

# Open firefox in workspace 2
if ! is_running "firefox"; then
    echo "starting firefox..."
    firefox &
    move_window_to_workspace "firefox" 2 &
else
    echo "firefox already running, moving to workspace 2..."
    hyprctl dispatch movetoworkspacesilent "2,class:firefox"
fi

# Small delay between launches
sleep 0.3

# Open VS Code in workspace 3
if ! is_running "code"; then
    echo "starting vs code..."
    code &
    move_window_to_workspace "Code" 3 &
else
    echo "vs code already running, moving to workspace 3..."
    hyprctl dispatch movetoworkspacesilent "3,class:Code"
fi

# Small delay between launches
sleep 0.3

# Open WhatsApp in workspace 4
if ! is_running "wasistlos"; then
    echo "starting whatsapp..."
    wasistlos &
    move_window_to_workspace "wasistlos" 4 &
else
    echo "whatsapp already running, moving to workspace 4..."
    hyprctl dispatch movetoworkspacesilent "4,class:wasistlos"
fi

# Small delay between launches
sleep 0.3

# Open Spotify in workspace 5
if ! is_running "spotify"; then
    echo "starting spotify..."
    spotify &
    move_window_to_workspace "Spotify" 5 &
else
    echo "spotify already running, moving to workspace 5..."
    hyprctl dispatch movetoworkspacesilent "5,class:Spotify"
fi


echo "applications launched and moved to workspaces!"
echo "- firefox: workspace 2"
echo "- vs code: workspace 3" 
echo "- whatsApp: workspace 4"
echo "- spotify: workspace 5"