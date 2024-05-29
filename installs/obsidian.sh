#!/usr/bin/env bash

export PROFILE_NAME="Obsidian"

export COLOR_01="#000000"           # Black (Host)
export COLOR_02="#A60001"           # Red (Syntax string)
export COLOR_03="#00BB00"           # Green (Command)
export COLOR_04="#FECD22"           # Yellow (Command second)
export COLOR_05="#3A9BDB"           # Blue (Path)
export COLOR_06="#BB00BB"           # Magenta (Syntax var)
export COLOR_07="#00BBBB"           # Cyan (Prompt)
export COLOR_08="#BBBBBB"           # White

export COLOR_09="#555555"           # Bright Black
export COLOR_10="#FF0003"           # Bright Red (Command error)
export COLOR_11="#93C863"           # Bright Green (Exec)
export COLOR_12="#FEF874"           # Bright Yellow
export COLOR_13="#A1D7FF"           # Bright Blue (Folder)
export COLOR_14="#FF55FF"           # Bright Magenta
export COLOR_15="#55FFFF"           # Bright Cyan
export COLOR_16="#FFFFFF"           # Bright White

export BACKGROUND_COLOR="#283033"   # Background
export FOREGROUND_COLOR="#CDCDCD"   # Foreground (Text)

export CURSOR_COLOR="#CDCDCD" # Cursor

# | ===========================================================================
# | Apply Colors
# | ===========================================================================
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

if [[ -e "${GOGH_APPLY_SCRIPT}" ]]; then
  bash "${GOGH_APPLY_SCRIPT}"
elif [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
elif [[ -e "${SCRIPT_PATH}/apply-colors.sh" ]]; then
  bash "${SCRIPT_PATH}/apply-colors.sh"
else
  printf '\n%s\n' "Error: Couldn't find apply-colors.sh"
  exit 1
fi
