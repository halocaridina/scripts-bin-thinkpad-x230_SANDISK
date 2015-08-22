#!/bin/bash

pacman -Qqme | sort > foreign_pkgs.txt
comm -23 <(pacman -Qqe|sort) foreign_pkgs.txt > repo_pkgs.txt

