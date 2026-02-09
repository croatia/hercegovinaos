#!/bin/bash
# 🎖️ general — StormOS Privilege Escalation
# Wrapper za sudo s pitanjem koje je bitno
# Verzija: 1.0-bura

# Custom prompt
export SUDO_PROMPT=$'🔐 Gdje si bio \'91.?: '

# Pass all arguments to sudo
sudo "$@"
