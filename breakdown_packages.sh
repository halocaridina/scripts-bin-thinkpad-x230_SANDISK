#!/usr/bin/env bash

pacman -Qqme | sort > /tmp/foreign_pkgs.txt
comm -23 <(pacman -Qqe|sort) /tmp/foreign_pkgs.txt > /tmp/repo_pkgs.txt

pacman -Qd > /tmp/asdeps.txt
pacman -Qe > /tmp/explicit.txt
