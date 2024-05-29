#!/usr/bin/env bash

export PROFILE_NAME="Aco"

export COLOR_01="#3F3F3F"           # Black (Host)
export COLOR_02="#FF0883"           # Red (Syntax string)
export COLOR_03="#83FF08"           # Green (Command)
export COLOR_04="#FF8308"           # Yellow (Command second)
export COLOR_05="#0883FF"           # Blue (Path)
export COLOR_06="#8308FF"           # Magenta (Syntax var)
export COLOR_07="#08FF83"           # Cyan (Prompt)
export COLOR_08="#BEBEBE"           # White

export COLOR_09="#474747"           # Bright Black
export COLOR_10="#FF1E8E"           # Bright Red (Command error)
export COLOR_11="#8EFF1E"           # Bright Green (Exec)
export COLOR_12="#FF8E1E"           # Bright Yellow
export COLOR_13="#1E8EFF"           # Bright Blue (Folder)
export COLOR_14="#8E1EFF"           # Bright Magenta
export COLOR_15="#1EFF8E"           # Bright Cyan
export COLOR_16="#C4C4C4"           # Bright White

export BACKGROUND_COLOR="#1F1305"   # Background
export FOREGROUND_COLOR="#B4E1FD"   # Foreground (Text)

export CURSOR_COLOR="#B4E1FD" # Cursor

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
