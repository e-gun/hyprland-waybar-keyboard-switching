#!/bin/bash
echo `hyprctl getoption input:kb_layout | grep str | cut -d ' ' -f2`
