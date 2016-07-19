#!/usr/bin/env bash

#for changing equalizer preset in mplayer
echo -e "1. flat\n2. classical\n3. club\n4. dance\n5. full-bass\n6. full-bass-and-treble\n7. full-treble\n8. headphones\n9. large-hall\n10.live\n11.party\n12.pop\n13.reggae\n14.rock\n15.ska\n16.soft\n17.soft-rock\n18.techno\n"

read -p "your choice:"

case $REPLY in
     1)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=0.0:0.0:0.0:0.0:0.0:0.0:0.0:0.0:0.0:0.0  #flat/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config;
      ;;
     2)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=0.0:0.0:0.0:0.0:0.0:-4.4:-4.4:-4.4:-5.8  #classical/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     3)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=0.0:0.0:4.8:3.3:3.3:3.3:1.9:0.0:0.0  #club/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     4)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=5.7:4.3:1.4:0.0:0.0:-3.4:-4.4:-4.3:0.0:0.0  #dance/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     5)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=-4.8:5.7:5.7:3.3:1.0:-2.4:-4.8:-6.3:-6.7:-6.7  #full bass/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     6)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=4.3:3.3:0.0:-4.4:-2.9:1.0:4.8:6.7:7.2:7.2  #full bass and treble/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     7)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=-5.8:-5.8:-5.8:-2.4:1.4:6.7:9.6:9.6:9.6:10.1  #full treble/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     8)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=2.8:6.7:3.3:-2.0:-1.4:1.0:2.8:5.7:7.7:8.6  #headphones/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     9)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=6.2:6.2:3.3:3.3:0.0:-2.9:-2.9:-2.9:0.0:0.0  #large hall/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     10)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=-2.9:0.0:2.4:3.3:3.3:3.3:2.4:1.4:1.4:1.4  #live/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     11)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=4.3:4.3:0.0:0.0:0.0:0.0:0.0:0.0:4.3:4.3  #party/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     12)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=-1.0:2.8:4.3:4.8:3.3:0.0:-1.4:-1.4:-1.0:-1.0  #pop/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     13)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=0.0:0.0:0.0:-3.4:0.0:3.8:3.8:0.0:0.0:0.0  #reggae/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     14)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=4.8:2.8:-3.4:-4.8:-2.0:2.4:5.3:6.7:6.7:6.7  #rock/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     15)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=-1.4:-2.9:-2.4:0.0:2.4:3.3:5.3:5.7:6.7:5.8  #ska/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     16)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=2.8:1.0:0.0:-1.4:0.0:2.4:4.8:5.7:6.7:7.2  #soft/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     17)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=2.4:2.4:1.4:0.0:-2.4:-3.4:-2.0:0.0:1.4:5.3  #soft rock/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     18)cat /home/$USER/.mplayer/config | sed 's/af.*/af=equalizer=4.8:3.3:0.0:-3.4:-2.9:0.0:4.8:5.7:5.8:5.3  #techno/' > /tmp/config.tmp; mv /tmp/config.tmp /home/$USER/.dotfiles/mplayer/.mplayer/config
      ;;
     19)cat /home/$USER/.mplayer/config.tests | sed 's/af.*/s/af.*/af=equalizer=6.2:6.2:3.3:3.3:0.0:-2.9:-2.9:-2.9:0.0:0.0  #alterado?//' > /tmp/config.tmp; mv /tmp/config.tmp /tmp/config.tmp;.tests
      ;;


esac
